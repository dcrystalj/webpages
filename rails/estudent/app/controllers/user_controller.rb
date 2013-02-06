class UserController < ApplicationController
  before_filter :check_auth

  def check_auth
    if not session[:ids]
      redirect_to "/login", :notice => "Oprostite, morate biti prijavljeni"
    else
      @user = User.where(:ids => session[:ids]).first
    end
  end

  def show
  end


  def marks
     @marks = Mark.where( :user => @user.ids).all
  end

  def check
    @subject = Subject.find_by_sql(['SELECT subjects.subjectid, subjects.name FROM subjects LEFT JOIN marks ON subjects.subjectid=marks.subject WHERE subjects.examon=1 and subjects.subjectid NOT IN (select marks.subject FROM marks WHERE marks.user=?) AND subjects.subjectid NOT IN (select subject from exams where user=?) ',@user.ids,@user.ids])
  end

  def checkCreate
    myList = params[:myList]
    if not myList.blank?
      Exam.create(:subject => myList,:user => @user.ids)
      redirect_to(:back, :notice => "Uspeseno vpisano")
     else
       redirect_to(:back, :notice => "Neuspeseno vpisano!")
    end
  end

  def checkout
    @exam  = Exam.find_by_sql(["SELECT subjects.name name, exams.subject  FROM exams LEFT JOIN subjects ON subjects.subjectid=exams.subject WHERE exams.user=?",@user.ids])
  end

  def checkoutDelete
    myList = params[:myList]
    if not myList.blank?
      izpis =Exam.destroy_all(:subject => myList,:user => @user.ids)
      redirect_to(:back, :notice => "Uspeseno Izbrisano")
    else
      redirect_to(:back, :notice => "Neuspeseno izbrisano!")
    end
  end
end

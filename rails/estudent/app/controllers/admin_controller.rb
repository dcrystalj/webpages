class AdminController < ApplicationController
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

  def examon
    @subject = Subject.where(:examon=>0)
  end

  def examonUpdate
    if params[:subject]==nil
      redirect_to(:back,:notice => "Nic za vpis")
      return
    end
    s = Subject.where(:subjectid=>params[:subject]).first
    s.examon = 1
    s.save
    redirect_to(:back,:notice => "Uspesno posodobljeno")
  end

  def examoff
    @subject = Subject.where(:examon=>1)
  end

  def examoffUpdate
    if params[:subject]==nil
      redirect_to(:back,:notice => "Nic za vpis")
      return
    end
    s = Subject.where(:subjectid=>params[:subject]).first
    s.examon = 0
    s.save
    redirect_to(:back,:notice => "Uspesno posodobljeno")
  end

  def inputmarks
     @users = User.all
  end

  def inputmarksCreate
    Mark.create(:mark=>Integer(params[:mark]),:year=>Integer(params[:year]),:subject=>Integer(params[:subject]),:user =>  User.where(:ids => params[:student][0..7]).first.ids)
    redirect_to(:back, :notice => "Uspesen vpis")
  end

  def register
  end

  def registerCreate
    User.create(:name => params[:name],:surname => params[:surname],:mail => params[:mail],:passwd => params[:passwd],:status=>1,:ids=> params[:id])
    redirect_to(:back, :notice => "Uspesen vpis")
  end
end

class LoginController < ApplicationController
  def index
    if session[:ids]
      @user  = User.where(:ids => session[:ids]).first
      if @user.status == 2
        redirect_to "/admin/show"
      elsif @user.status ==1
        redirect_to "/user/show"
      end
    end
  end
  def create
    if params[:username] and params[:password]
      @user = User.where(:ids => params[:username], :passwd => params[:password]).first
    end
    if @user
      session[:ids] = @user.ids

      if @user.status == 2
        redirect_to "/admin/show"
      elsif @user.status ==1
        redirect_to "/user/show"
      end

    else
      redirect_to(:back, :notice => "Napacno izpolnjena froma", :color => "invalid")
    end

  end
  def insert
    t = User.create :ids =>"63100200", :name => "tom", :surname => "tomazic", :status => 1, :passwd => "abc", :mail=>"tomaz@lzpr.si"
  end

  def logout
    reset_session
    redirect_to "/login", :notice => "Uspesna odjava"
  end
end

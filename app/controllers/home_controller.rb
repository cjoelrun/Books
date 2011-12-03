class HomeController < ApplicationController
  def index
    @users = User.all
  end
  def search    
  end
end

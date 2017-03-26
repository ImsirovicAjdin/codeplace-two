class PagesController < ApplicationController
  # make sure only logged in users can access the dashboard.
  before_action :authenticate_user!, only: [:dashboard]
  
  def home
    if current_user
      redirect_to books_path
    end
  end
  
  def dashboard
    @books = current_user.books
  end
end

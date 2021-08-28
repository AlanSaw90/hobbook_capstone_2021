class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def homepage
    @welcome ="Welcome to HobBook"
  end
end

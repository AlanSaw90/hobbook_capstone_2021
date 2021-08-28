class PagesController < ApplicationController
  skip_before_action :aunthenticate_user!

  def homepage
    @welcome ="Welcome to HobBook"
  end
end

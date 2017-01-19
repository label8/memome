class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :get_category_name_list

  private

    def get_category_name_list
      @categories = Category.all.order("id")
    end
end

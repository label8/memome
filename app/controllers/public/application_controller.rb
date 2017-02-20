class Public::ApplicationController < ActionController::Base
  layout 'public/layouts/application'

  before_action :get_category_name_list

  private

    def get_category_name_list
      @categories = Category.all.order("id")
    end
end

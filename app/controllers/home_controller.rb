class HomeController < ApplicationController
  def index
    @categories = Category.all
    @ganders = Gander.all
    @bikes = Bike.for_category(params.dig(:filter, :category))
                 .for_gander(params.dig(:filter, :gander))
  end

  def about
  end

  def services
  end

  def contact
  end
end

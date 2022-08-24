class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :market

  def market
  end
end

class NoWaitingController < ApplicationController
  def index
  @locations = Location.order(:title)
  end
end
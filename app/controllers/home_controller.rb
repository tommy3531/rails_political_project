class HomeController < ApplicationController
  def index
	@bill = OpenStates::Bill.find_by_openstates_id("KS00012345")
  end
end

class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end
private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end

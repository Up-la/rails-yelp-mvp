class AddRestaurantsToReview < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :restaurant, index: true
  end
end

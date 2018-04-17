class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    rating = Show.where(rating: self.highest_rating)
    rating.to_a
  end
end

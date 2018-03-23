class Show < ActiveRecord::Base
  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first
  end

  def lowest_rating
    minimum(:rating)
  end

  def least_popular_show
    self.where("rating = ?", self.lowest_rating).first
  end

  def ratings_sum
  end

  def popular_shows
  end

  def shows_by_alphabetical_order
  end


end

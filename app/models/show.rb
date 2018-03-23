class Show < ActiveRecord::Base
  def self.highest_rating
    maximum(:rating)
  end

  def self.most_popular_show
    self.where("rating = ?", self.highest_rating).first
  end

  def self.lowest_rating
    minimum(:rating)
  end

  def self.least_popular_show
    self.where("rating = ?", self.lowest_rating).first
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def popular_shows
  end

  def shows_by_alphabetical_order
    self.order_by(:name)
  end


end

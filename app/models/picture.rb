class Picture < ApplicationRecord

  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

  def self.older_than_month
    Picture.where("created_at < ?", 1.month.ago)
  end

  def self.picture_created_in_year(year)
    pictures=[]
   Picture.all.each do |p|
    if p.created_at.to_a[5] == year
      pictures << p
    end
   end
   pictures
  end

  validates :artist, presence: true #when you create a picture
  validates :title, length: { in: 3..20 }
  validates :url, presence: true, uniqueness: true

end

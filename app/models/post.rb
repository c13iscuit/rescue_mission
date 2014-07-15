class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes, as: :votable

  validates_presence_of :title
  validates :url, uniqueness: true, if: 'url.present?'

  mount_uploader :image, ImageUploader

  def score_count
    Vote.where(votable_id: id, votable_type: "Post").sum(:value)
  end
end

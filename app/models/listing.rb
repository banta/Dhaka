class Listing < ActiveRecord::Base
  has_paper_trail
  attr_accessible :description, :details, :price, :status
  belongs_to :seller, :class_name => 'User'
  has_and_belongs_to_many :categories
  acts_as_taggable
  @@permalink_field = :description

  validates :description, :presence => true
  validates :details, :presence => true
  validates :price,
    :numericality => {
      :only_integer => true,
      :greater_tan_or_equal_to => 0,
      :message => 'must be a number >= 0'
    }

  def to_param
    permalink
  end
end
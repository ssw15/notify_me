class Target < ActiveRecord::Base
  validates :page_url, presence: true
  validates :element_selector, presence: true

  has_many :checks
end

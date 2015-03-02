class Check < ActiveRecord::Base
  validates :target, presence: true

  belongs_to :target
end

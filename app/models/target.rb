require 'open-uri'

class Target < ActiveRecord::Base
  validates :page_url, presence: true
  validates :element_selector, presence: true

  has_many :checks

  def check_now
    doc = Nokogiri::HTML(open(self.page_url))
    content = doc.css(self.element_selector)
    self.checks.create :content => content

    return content
  end
end

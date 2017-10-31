class Portfolio < ApplicationRecord
	has_many :technologies
	accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? }

	validates_presence_of :title, :subtitle

	mount_uploader :thumb_image, PortfolioUploader
	mount_uploader :main_image, PortfolioUploader

	def self.angular
		where(subtitle: 'Angular')
	end

	def self.by_position
		order("position ASC")
	end

	#custom scope.  Place the scope name ruby_on_rails_portfolio_items in the portfolios_controller rb in the index function as Portfolio.ruby_on_rails_portfolio_items instead of Portfolio.all
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails')}
end
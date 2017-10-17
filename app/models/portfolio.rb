class Portfolio < ApplicationRecord
validates_presence_of :title, :subtitle, :main_image, :thumb_image

def self.angular
	where(subtitle: 'Angular')
end

#custom scope.  Place the scope name ruby_on_rails_portfolio_items in the portfolios_controller rb in the index function as Portfolio.ruby_on_rails_portfolio_items instead of Portfolio.all
#scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails')}
end

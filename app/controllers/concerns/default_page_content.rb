module DefaultPageContent
	extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end

  def set_page_defaults
  	@page_title = "JackySody Site"
  	@seo_keywords = "Jack Soderstrom portfolio"
  end
end
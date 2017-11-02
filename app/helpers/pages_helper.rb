module PagesHelper
	def twitter_parser tweet
		tweet = "jeffreyguenther: #rails community: Work is started on OpenStack support for ActiveStorage https://t.co/SeSLdDy7jf. Help is welcome."
		regex = %r{
	      \b
	      (
	        (?: [a-z][\w-]+:
	         (?: /{1,3} | [a-z0-9%] ) |
	          www\d{0,3}[.] |
	          [a-z0-9.\-]+[.][a-z]{2,4}/
	        )
	        (?:
	         [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
	        )+
	        (?:
	          \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
	          [^\s`!()\[\]{};:'".,<>?«»“”‘’]
	        )
	      )
	    }ix

	    tweet.gsub(regex) { |url| "<a href=#{url} target='_blank'>#{url}</a>" }.html_safe
	    
	end
end

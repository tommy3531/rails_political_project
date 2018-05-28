class PoliticanController < ApplicationController
	def politican
  		@d = Politican.all
  end
end

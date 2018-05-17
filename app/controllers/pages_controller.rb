require 'propublica'

class PagesController < ApplicationController
  def home
  	client = ProPublica.new('SpzjlPZlkMlPKKGCLQS1OqZtCN96lPl7sszOTKra')
  	@a = client.get_house_members("115")
  end

  def about
  end

  def contact
  end
end

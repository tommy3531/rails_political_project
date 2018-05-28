require 'net/http'
require 'uri'
require 'json'


class PropublicaController < ApplicationController
  def senator
	uri = URI.parse("https://api.propublica.org/congress/v1/115/senate/members.json")
	request = Net::HTTP::Get.new(uri)
	request["X-Api-Key"] = "SpzjlPZlkMlPKKGCLQS1OqZtCN96lPl7sszOTKra"

	req_options = {
	  use_ssl: uri.scheme == "https",
	}

	response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
	  http.request(request)
	end

	data = JSON.parse(response.body)
	# @data = inner["congress"]
	results = data["results"]
	results.each do |result|
		result["members"].each do |senator|
			pid = senator["id"]
			firstname = senator["first_name"]
			lastname = senator["last_name"]
			fb = senator["facebook_account"]
			politican = Politican.new(member_id: 
				pid, first_name: firstname, last_name: lastname, facebook_account: fb)
			politican.save
		end
	end
  end

  def getAll
  	@d = Politican.all
  end

  def house
	uri = URI.parse("https://api.propublica.org/congress/v1/115/house/members.json")
	request = Net::HTTP::Get.new(uri)
	request["X-Api-Key"] = "SpzjlPZlkMlPKKGCLQS1OqZtCN96lPl7sszOTKra"

	req_options = {
	  use_ssl: uri.scheme == "https",
	}

	response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
	  http.request(request)
	end
	data = JSON.parse(response.body)
	# @data = inner["congress"]
	@houseMembers = data["results"][0]["members"]


  end

  def detail()
  	id = params[:id]
  	uri = URI.parse("https://api.propublica.org/congress/v1/members/#{id}.json")
	request = Net::HTTP::Get.new(uri)
	request["X-Api-Key"] = "SpzjlPZlkMlPKKGCLQS1OqZtCN96lPl7sszOTKra"

	req_options = {
	  use_ssl: uri.scheme == "https",
	}

	response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
	  http.request(request)
	end
	data = JSON.parse(response.body)
	@details = data["results"]
  end

  def about
  end

  def contact
  end
end


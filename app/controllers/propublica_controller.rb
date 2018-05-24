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
	@senatorMembers = data["results"][0]["members"]

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

  def getSenator

  end

  def about
  end

  def contact
  end
end


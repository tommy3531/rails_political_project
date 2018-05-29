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
			api_uri = senator["api_uri"]
			firstname = senator["first_name"]
			lastname = senator["last_name"]
			birth = senator["date_of_birth"]
			party = senator["party"]
			twitter = senator["twitter_account"]
			fb = senator["facebook_account"]
			youtube = senator["youtube_account"]
			govTrack = senator["govtrack_id"]
			cspan = senator["cspan_id"]
			votesmart = senator["votesmart_id"]
			icpsr = senator["icpsr_id"]
			crp = senator["crp_id"]
			fec = senator["fec_candidate_id"]
			election = senator["next_election"]
			missed = senator["missed_votes"]
			present = senator["total_present"]
			ocd = senator["ocd_id"]
			office = senator["office"]
			phone = senator["phone"]
			state = senator["state"]
			lis = senator["lis_id"]
			missed_vote = senator["missed_votes_pct"]
			party_vote = senator["votes_with_party_pct"]
			politican = Politican.new(member_id: 
				pid, api_uri: api_uri, first_name: firstname, last_name: lastname, date_of_birth: birth, party: party, twitter_account: twitter, facebook_account: fb, youtube_account: youtube, govtrack_id: govTrack, cspan_id: cspan, votesmart_id: votesmart, icpsr_id: icpsr, crp_id: crp, fec_candidate_id: fec, next_election: election, missed_votes: missed, total_present: present, ocd_id: ocd, office: office, phone: phone, state: state, lis_id: lis, missed_votes_pct: missed_vote, votes_with_party_pct: party_vote)
			politican.save
		end
	end
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


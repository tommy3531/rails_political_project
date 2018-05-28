class CreatePoliticans < ActiveRecord::Migration[5.1]
  def change
    create_table :politicans do |t|
      t.string :member_id
      t.string :api_uri
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :party
      t.string :twitter_account
      t.string :facebook_account
      t.string :youtube_account
      t.string :govtrack_id
      t.string :cspan_id
      t.string :votesmart_id
      t.string :icpsr_id
      t.string :crp_id
      t.string :fec_candidate_id
      t.string :next_election
      t.string :missed_votes
      t.string :total_present
      t.string :ocd_id
      t.string :office
      t.string :phone
      t.string :state
      t.string :lis_id
      t.string :missed_votes_pct
      t.string :votes_with_party_pct

      t.timestamps
    end
  end
end

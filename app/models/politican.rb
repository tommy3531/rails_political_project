class Politican < ApplicationRecord
	validates :member_id, uniqueness: true
end

class Art < ActiveRecord::Base
    belongs_to :artist
    has_many :reviews
    has_many :viewers, through: :reviews
end
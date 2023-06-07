class Artist < ActiveRecord::Base
    has_many :arts
    has_many :reviews, through: :arts
end
class Review < ActiveRecord::Base
    belongs_to :viewer
    belongs_to :art
end
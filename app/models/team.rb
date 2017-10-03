class Team < ActiveRecord::Base
    has_many :players
    has_many :games
    has_many :leagues, { through: :games }
end

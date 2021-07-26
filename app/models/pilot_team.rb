class PilotTeam < ApplicationRecord
  belongs_to :pilot
  belongs_to :team
  belongs_to :championship
end

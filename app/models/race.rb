class Race < ApplicationRecord
  belongs_to :circuit
  belongs_to :championship
end

class Candidate < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :politics, presence: true, length: {
    minimum: 4,
    too_short: "must have at least %{count} characters"
  }
  
  has_many :vote_logs
end

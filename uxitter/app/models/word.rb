class Word < ApplicationRecord
  validates :input, :output, presence: true
end

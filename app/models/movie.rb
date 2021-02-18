class Movie < ApplicationRecord
  has_many :comments

  broadcasts
end

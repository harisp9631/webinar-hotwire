class Comment < ApplicationRecord
  belongs_to :movie

  after_create_commit -> { broadcast_append_to(movie)}
end

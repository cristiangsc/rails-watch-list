class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, uniqueness: {scope: :list_id, messages: "ya existe en la lista el mismo comentario"}
end

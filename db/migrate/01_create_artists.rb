class CreateArtists < ActiveRecord::Migration
  has_many :songs
  has_many :genres, through: :songs
  
  def change
    create_table :artists do |t|
      t.string :name
    end
  end
end

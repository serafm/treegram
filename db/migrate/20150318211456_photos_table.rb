class PhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |photons|
      photons.column :user_id, :integer
      photons.column :title, :string
      photons.timestamps
    end
  end
end

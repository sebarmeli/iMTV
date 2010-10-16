class CreateVideoImages < ActiveRecord::Migration
  def self.up
    create_table :video_images do |t|
      t.string :url
      t.references :video

      t.timestamps
    end
  end

  def self.down
    drop_table :video_images
  end
end

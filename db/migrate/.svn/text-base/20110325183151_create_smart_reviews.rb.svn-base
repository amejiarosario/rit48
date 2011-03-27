class CreateSmartReviews < ActiveRecord::Migration
  def self.up
    create_table :smart_reviews do |t|
      t.references :user
      t.references :section

      t.timestamps
    end
  end

  def self.down
    drop_table :smart_reviews
  end
end

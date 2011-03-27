class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      # Common Attributes
      t.string :comment, :limit => 700
      t.integer :difficulty, :default => 0
      t.references :smart_review

      # Discriminator Column
      t.string :type, :null => false

      # Professor Review      
      t.integer :mood, :default => 0
      t.integer :teaching_skill, :default => 0
      t.integer :exams_difficulty, :default => 0
      t.integer :helpfulness, :default => 0

      # Course Review
      t.integer :usefulness, :default => 0
      t.integer :content, :default => 0
      t.integer :time_spent, :default => 0
      t.integer :recommend, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end

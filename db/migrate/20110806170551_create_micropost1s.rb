class CreateMicropost1s < ActiveRecord::Migration
  def self.up
    create_table :micropost1s do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :micropost1s
  end
end

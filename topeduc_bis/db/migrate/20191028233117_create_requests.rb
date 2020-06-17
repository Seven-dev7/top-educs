class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.belongs_to :user, index: true
      t.belongs_to :client, index: true
      t.datetime :starts_at
      t.integer :duration
      t.integer :hourly_rate
      t.string :adress
      t.string :ZIP_CODE      
      t.boolean :driving_licence
      t.string :job
      t.text :comments
      t.text :other
      t.boolean :accepted?
      t.text :answer_comments

      t.timestamps
    end
  end
end

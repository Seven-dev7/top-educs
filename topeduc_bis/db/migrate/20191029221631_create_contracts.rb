class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :request, index: true
      t.belongs_to :client, index: true
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :hourly_rate
      t.string :adress
      t.string :ZIP_CODE
      t.string :job
      t.text :comments

      t.timestamps
    end
  end
end

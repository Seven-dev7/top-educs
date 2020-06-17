class CreateRibs < ActiveRecord::Migration[6.0]
  def change
    create_table :ribs do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.jsonb :image_data

      t.timestamps
    end
  end
end

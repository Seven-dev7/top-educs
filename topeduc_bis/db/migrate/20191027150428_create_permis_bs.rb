class CreatePermisBs < ActiveRecord::Migration[6.0]
  def change
    create_table :permis_bs do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.jsonb :image_data
      t.boolean :recto

      t.timestamps
    end
  end
end

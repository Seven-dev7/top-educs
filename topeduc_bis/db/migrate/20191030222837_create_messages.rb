class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.boolean :read?
      t.references :sender, index: true
      t.references :recipient, index: true

      t.timestamps
    end
  end
end

class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :n_tva
      t.string :n_siret
      t.text :address
      t.string :zip_code

      t.timestamps
    end
  end
end

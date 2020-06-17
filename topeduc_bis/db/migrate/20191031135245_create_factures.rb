class CreateFactures < ActiveRecord::Migration[6.0]
  def change
    create_table :factures do |t|

      t.references :bill_sender, index: true
      t.references :bill_recipient, index: true
      t.belongs_to :client, index: true
      t.integer :total_price
      t.string :month
      t.float :TVA
      t.jsonb :xlsx_data
      t.integer :advance_payment

      t.timestamps
    end
  end
end

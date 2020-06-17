class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.belongs_to :user, index: true
      t.integer :pace
      t.datetime :starts_at
      t.integer :duration
      t.boolean :recurring

      t.timestamps
    end
  end
end

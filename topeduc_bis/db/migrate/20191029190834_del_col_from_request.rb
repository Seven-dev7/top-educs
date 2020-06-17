class DelColFromRequest < ActiveRecord::Migration[6.0]
  def change

  	remove_column :requests, :duration
  	add_column :requests, :ends_at, :datetime
  	
  end
end

class AddColToResume < ActiveRecord::Migration[6.0]
  def change

  	add_column :resumes, :title, :string
  end
end

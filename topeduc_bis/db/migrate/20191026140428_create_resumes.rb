class CreateResumes < ActiveRecord::Migration[6.0]
  def change
    create_table :resumes do |t|
      t.belongs_to :user, index: true
      t.jsonb :image_data

      t.timestamps
    end
  end
end

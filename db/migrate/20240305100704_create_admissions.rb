class CreateAdmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :admissions do |t|
      t.string :name
      t.string :father_name
      t.date :date_of_birth
      t.string :address
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end

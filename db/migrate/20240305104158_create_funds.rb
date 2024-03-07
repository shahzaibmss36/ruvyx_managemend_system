class CreateFunds < ActiveRecord::Migration[7.1]
  def change
    create_table :funds do |t|
      t.integer :amount

      t.timestamps
    end
  end
end

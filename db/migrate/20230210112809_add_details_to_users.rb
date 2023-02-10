class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :joining_date, :datetime
    add_column :users, :role, :integer
    add_column :users, :address, :string
    add_column :users, :mob_no, :integer
  end
end

class RemoveColumnFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :joining, :datetime
    add_column :users, :date_of_birth, :date
    add_column :users, :joining_date, :date
  end
end

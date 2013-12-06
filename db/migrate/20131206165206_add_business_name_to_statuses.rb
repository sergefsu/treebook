class AddBusinessNameToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :business_name, :string
  end
end

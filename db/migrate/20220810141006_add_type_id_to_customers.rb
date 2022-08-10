class AddTypeIdToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_reference :customers, :type, null: false, foreign_key: true
  end
end

class CreateCustomers < ActiveRecord::Migration[6.0]
 
  def change
    create_table :customers do |t|
      t.string :family_name, null: false, length: { maximum: 20 }
      t.string :given_name,  null: false, length: { maximum: 20 }
      t.text :detail,       null: false
      t.string :account_number, null: false

      t.timestamps
    end
  end
end
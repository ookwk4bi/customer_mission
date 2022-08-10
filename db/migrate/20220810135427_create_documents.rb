class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :last_name
      t.string :personal_name
      t.text :content
      t.string :number
      t.timestamps
    end
  end
end


class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :item
      t.string :phone
      t.string :category
      t.datetime :created_at,   :null => false
      t.datetime :updated_at,   :null => false
      t.string :preferredcontact
      t.string :companytype
      t.string :itemtype
      t.text :details
      t.string :picture

      t.timestamps
    end
  end
end

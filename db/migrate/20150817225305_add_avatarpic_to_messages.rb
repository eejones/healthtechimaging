class AddAvatarpicToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :avatarpic, :string
  end
end

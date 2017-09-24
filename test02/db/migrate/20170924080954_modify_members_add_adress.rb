class ModifyMembersAddAdress < ActiveRecord::Migration[5.1]
  def change
    add_column(:members, :adress, :string)
    add_column(:members, :postalCode, :string)
  end
end

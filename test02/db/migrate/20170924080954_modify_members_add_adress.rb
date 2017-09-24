class ModifyMembersAddAdress < ActiveRecord::Migration[5.1]
  def change
    add_column(:members, :address, :string)
    add_column(:members, :postalCode, :string)
  end
end

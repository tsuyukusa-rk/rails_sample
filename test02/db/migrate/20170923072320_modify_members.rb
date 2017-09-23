class ModifyMembers < ActiveRecord::Migration[5.1]
  def change
    # テーブル名, 追加したいcolumn
    add_column :members, :birthday, :date
  end
end

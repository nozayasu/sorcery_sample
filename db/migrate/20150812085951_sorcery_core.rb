class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,           limit: 190
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end

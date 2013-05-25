class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :email
      t.string :fullname
      t.string :phonenumber
      t.string :zipcode
      t.timestamps
    end
  end
end

class CreateDusers < ActiveRecord::Migration[5.0]
  def change
    create_table :dusers do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end

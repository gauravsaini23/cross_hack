class CreateMaliciousSessions < ActiveRecord::Migration
  def change
    create_table :malicious_sessions do |t|
      t.text :session_data

      t.timestamps null: false
    end
  end
end

class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string	:name
      t.text	:message
      t.string	:email
      t.date	:date

      t.timestamps
    end
  end
end

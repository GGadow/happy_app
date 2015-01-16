class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :setup
      t.text :punchline

      t.timestamps null: false
    end
  end
end

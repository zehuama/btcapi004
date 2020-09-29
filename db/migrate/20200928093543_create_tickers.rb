class CreateTickers < ActiveRecord::Migration[6.0]
  def change
    create_table :tickers do |t|
      t.string :symbol
      t.float :openPrice
      t.decimal :closePrice
      t.string :openTime
      t.datetime :closeTime
      # t.datetime :created_at
      t.timestamps
    end
    add_index :tickers, :symbol
  end
end

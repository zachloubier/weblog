class CreateComments < ActiveRecord::Migration
  	def change
  		create_table :comments do |t|
  			t.string :title
  			t.string :body, null: false
  			t.belongs_to :admin
  			t.belongs_to :post
  		end
  	end
end

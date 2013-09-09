class CreateCategories < ActiveRecord::Migration
	def change
		create_table :categories do |t|
			t.string :name, :null => false
			t.string :slug, :null => false
			t.timestamps
		end
	end
end

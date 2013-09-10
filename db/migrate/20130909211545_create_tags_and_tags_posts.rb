class CreateTagsAndTagsPosts < ActiveRecord::Migration
	def change
		create_table :tags do |t|
			t.string :name, null: false, unique: true
			t.string :slug, null: false, unique: true
			t.timestamps
		end

		create_table :posts_tags do |t|
			t.belongs_to :post
			t.belongs_to :tag
		end
	end
end

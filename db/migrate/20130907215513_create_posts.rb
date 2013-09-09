class CreatePosts < ActiveRecord::Migration
    def change
        create_table(:posts) do |t|
            t.integer :admin_id, :null => false
            t.string :title, :null => false
            t.string :slug, :null => false
            t.string :description, :null => false
            t.text :body, :null => false

            t.timestamps
        end
        add_index :posts, :admin_id
        add_index :posts, :slug
    end
end

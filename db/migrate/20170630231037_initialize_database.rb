class InitializeDatabase < ActiveRecord::Migration[5.1]
  def change
  	# avatar table
  	create_table :avatar do |t|
  		t.string :name
  		t.string :path
  	end
    # users table
    create_table :users do |t|
    	t.string :email
    	t.string :password
    	t.string :username
    	t.string :bio
     	t.string :hometown
     	t.belongs_to :avatars, foreign_key: true 
    	t.timestamps
    end
    # posts table
    create_table :posts do |t|
    	t.string :title
      	t.string :body
      	t.string :image
      	t.belongs_to :user, foreign_key: true
      	t.timestamps
    end
    #comments table
    create_table :comments do |t|
    	t.string :body
    	t.belongs_to :users, foreign_key: true
    	t.belongs_to :posts, foreign_key: true
    	t.timestamps

  end
end

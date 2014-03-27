# See http://sequel.jeremyevans.net/rdoc/files/doc/migration_rdoc.html
Sequel.migration do
  change do
  	create_table :posts do
      primary_key :id
      text :description, :null => false
      string :name, :null => false
      string :contact, :null => false
      integer :grade, :null => false
      datetime :created_at, :null => false
      datetime :updated_at, :null => false
  	end
  end
end

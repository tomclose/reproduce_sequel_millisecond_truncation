Sequel.migration do
  change do
    create_table(:appointments) do
      primary_key :id
      column :created_at, "timestamp without time zone"
      column :updated_at, "timestamp without time zone"
      column :start_time, "timestamp without time zone"
      column :end_time, "timestamp without time zone"
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "SET search_path TO \"$user\", public"
    self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20150628212914_create_appointments.rb')"
  end
end

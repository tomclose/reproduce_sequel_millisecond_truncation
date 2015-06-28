Sequel.migration do
  change do

    create_table :appointments do
      primary_key :id

      DateTime :created_at
      DateTime :updated_at

      DateTime :start_time
      DateTime :end_time

    end

  end
end

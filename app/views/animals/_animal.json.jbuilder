json.extract! animal, :id, :name, :breed, :gender, :birth, :size, :neutered, :vaccinated, :description, :created_at, :updated_at
json.url animal_url(animal, format: :json)

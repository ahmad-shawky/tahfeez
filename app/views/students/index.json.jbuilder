json.array!(@students) do |student|
  json.extract! student, :id, :name, :image, :under_age, :age, :joining_date
  json.url student_url(student, format: :json)
end

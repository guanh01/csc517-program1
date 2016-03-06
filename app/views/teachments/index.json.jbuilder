json.array!(@teachments) do |teachment|
  json.extract! teachment, :id, :instructor_id, :course_id
  json.url teachment_url(teachment, format: :json)
end

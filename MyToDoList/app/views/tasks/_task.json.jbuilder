json.extract! task, :id, :name, :content, :status, :author_id, :created_at, :updated_at
json.url task_url(task, format: :json)

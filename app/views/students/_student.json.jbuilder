json.extract! student, :id, :first_name, :last_name, :email, :phone_number, :short_bio, :linkedin_url, :twitter_handle, :website_url, :online_resume_url, :github_url, :photo_url, :created_at, :updated_at
json.url student_url(student, format: :json)

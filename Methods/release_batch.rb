def release_batch(batch_id, user_login)
  ActiveRecord::Base.transaction do
    Batch.find(batch_id).release_with_user!(User.find_by_login(user_login))
  end
end

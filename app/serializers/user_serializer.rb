class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :call_count, :email_count, :title, :territory, :experience_level

  def call_count
    object.calls.count
  end

  def email_count
    object.emails.count
  end
end

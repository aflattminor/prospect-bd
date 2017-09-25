class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :call_count, :email_count, :title, :territory, :experience_level, :meeting_count

  def call_count
    object.calls.count
  end

  def email_count
    object.emails.count
  end

  def meeting_count
    object.meetings.count
  end
end

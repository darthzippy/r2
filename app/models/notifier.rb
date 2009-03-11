class Notifier < ActionMailer::Base

  helper :application
  
  def todo_notification(user)
    recipients  user.email
    from        "cetapps@gmail.com"
    subject     "You have a new ToDo..."
    body        :user => user
  end

end

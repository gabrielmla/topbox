module ApplicationHelper

  LOGIN_URL = '/login'

  MAIN_FOLDER_NAME = 'Meu Topbox'
  MAIN_FOLDER_PATH = '/mytopbox/'

  ACTION_NEW = 'new'
  ACTION_SHOW = 'show'
  ACTION_INDEX = 'index'


  def current_user_notifications
    Notification.where(user: get_current_user.id).order('id DESC').first(5)
  end

 
  def qnt_notifications
    Notification.where(user: get_current_user.id).size
  end

  def qnt_unread_notifications
    notifications = Notification.where(user: get_current_user.id).where(read: false)
    size = notifications.size
    return size
  end

  def change_idiom_en
    I18n.default_locale = :en
    redirect_to :back
  end

  def change_idiom_pt
    I18n.default_locale = :pt
    redirect_to :back
  end

end

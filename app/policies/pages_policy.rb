class PagesPolicy < Struct.new(:user, :pages)
  def index?
    !user.present?
  end
end

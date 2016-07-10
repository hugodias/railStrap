class PagesPolicy < Struct.new(:user, :pages)
  def index?
    not user.present?
  end
end

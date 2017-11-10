module Blending
  extend ActiveSupport::Concern

  included do
    after_save :make_juice, if: :apple_class?
  end

  def apple_class?
    self.instance_of?Apple
  end

  def make_juice
  end
end

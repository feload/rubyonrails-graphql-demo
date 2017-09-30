class User < ApplicationRecord
  has_many    :friends, class_name: "User", foreign_key: "friend_id"
end

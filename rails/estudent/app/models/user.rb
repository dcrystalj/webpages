class User < ActiveRecord::Base
  attr_accessible :ids, :mail, :name, :passwd, :status, :surname
end

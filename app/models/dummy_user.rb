# -*- coding: utf-8 -*-
# == Schema Information
# Schema version: 20090529051529
#
# Table name: users
#
#  id         :integer       not null, primary key
#  created_at :datetime      not null
#  updated_at :datetime      not null
#  user_token :string(40)    not null, index_users_on_user_token(unique)
#  nickname   :string(40)
#

# ユーザ
class DummyUser < ActiveRecord::Base
  untranslate_all
  set_table_name 'users'
  NicknameMaximumLength = 40
  TokenLength  = 20
  TokenPattern = TokenUtil.create_token_regexp(TokenLength)

  multi_auth

  validates_presence_of :user_token
  validates_length_of :nickname, :maximum => NicknameMaximumLength, :allow_nil => true
  validates_format_of :user_token, :with => TokenPattern, :allow_nil => true
  validates_uniqueness_of :user_token

  before_validation_on_create { |record|
    if record.user_token.blank?
      record.user_token = record.class.create_unique_user_token
    end
  }

  def self.create_unique_user_token
    return TokenUtil.create_unique_token(self, :user_token, TokenLength)
  end
end

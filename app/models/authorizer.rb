class Authorizer

  def self.authenticate(env_hash)
    env_hash['uid'] == "111209982554958462307"
  end

end

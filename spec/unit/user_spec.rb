context User do
  describe "#self.authenticate" do

    let!(:user) { User.create(
                 :email => "test@test.com",
                 :password => "secret123"
                  )}

    it 'correct password and email authenticates user' do
      expect(User.authenticate("test@test.com", "secret123")).to eq user
    end
  end
end

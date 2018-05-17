module ControllerMacros
  def login_instructor
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:instructor]
      sign_in FactoryBot.create(:instructor) # Using factory girl as an example
    end
  end
end



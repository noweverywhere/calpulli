require 'rails_helper'

RSpec.describe "module_sessions/show", type: :view do
  before(:each) do
    @module_session = assign(:module_session, ModuleSession.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

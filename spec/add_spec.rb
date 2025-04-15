require './app/services/add.rb'

RSpec.describe Add do
    # checks whether the Add class exists
    it "creates an Add class" do
        add = Add.new
        expect(add).to be_kind_of(Add)
    end
end
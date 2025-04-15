RSpec.describe Add do
    it "creates an Add class" do
        add = Add.new
        expect(add).to be_kind_of(Add)
    end
end
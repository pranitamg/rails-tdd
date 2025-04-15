require './app/services/add.rb'

RSpec.describe Add do
    # checks whether the Add class exists
    it "creates an Add class" do
        add = Add.new
        expect(add).to be_kind_of(Add)
    end

    # checks whether the Add class responds to the addition method
    it "responds to addition" do
        add = Add.new
        expect(add).to respond_to(:addition)
    end

    # checks whether the addition method takes arguments to perform addition
    it "addition method takes arguments for addition" do
        add = Add.new.addition(2, 3)
        expect { (add) }.not_to raise_error
    end

    # checks if it adds two numbers
    # it "adds two numbers" do
    #     add = Add.new.addition(2, 3)
    #     expect(add).to eq(5)
    # end
end
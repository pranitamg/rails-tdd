require './app/services/add.rb'

RSpec.describe Add do
    # 1. checks whether the Add class exists
    it "creates an Add class" do
        add = Add.new
        expect(add).to be_kind_of(Add)
    end

    # 2. checks whether the Add class responds to the addition method
    it "responds to addition" do
        add = Add.new
        expect(add).to respond_to(:addition)
    end

    # 3. checks whether the addition method takes arguments to perform addition
    it "addition method takes arguments for addition" do
        add = Add.new.addition(2, 3)
        expect { (add) }.not_to raise_error
    end

    # 4. checks if it adds two numbers
    it "adds two numbers" do
        add = Add.new.addition(2, 3)
        expect(add).to eq(5)
    end

    # 5. checks if it adds an array of numbers
    it "adds an array of numbers" do
        add = Add.new.addition([1, 2, 3, 4, 5])
        expect(add).to eq(15)
    end

    # 6. checks if it returns 0 if 0 is passed as an argument
    it "returns 0 if 0 is passed as an argument" do
        add = Add.new.addition(0)
        expect(add).to eq(0)
    end

    # 7. checks if it returns correct output if empty array is passed
    it "returns output if empty array is passed" do
        expect { Add.new.addition([]) }.to raise_error(ArgumentError, "Empty array provided")
    end
end
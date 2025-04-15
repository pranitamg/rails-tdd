class Add
    def addition(*args)
        values = args.flatten

        raise ArgumentError, "Empty array provided" if values.empty?

        values.sum
    end
end
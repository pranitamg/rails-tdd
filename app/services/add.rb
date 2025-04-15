class Add
    def addition(*args)
        values = args.flatten

        raise ArgumentError, "Empty array provided" if values.empty?

        raise ArgumentError, "All elements must be valid numbers" if !values.all? { |v| v.is_a?(Numeric) }

        values.sum
    end
end
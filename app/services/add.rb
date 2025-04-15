class Add
    def addition(*args)
        values = args.flatten
        p "array: #{values}"
        values.sum
    end
end
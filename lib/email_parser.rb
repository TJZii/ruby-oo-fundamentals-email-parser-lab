# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

    

    def initialize(stringy)
        @emailchain = stringy
    end

    def parse
        @arr = []
        @arr = @emailchain.split(" ")
        z = 0
        while z < @arr.length
            a = 0
            if @arr[z][-1] == ","
                getgone = @arr[z].split("")
                getgone.pop
                @arr[z] = getgone.join("")
            end

            while a < z
                if @arr[z] == @arr[a]
                    @arr.delete_at(a)
                end
                a += 1
            end

            z += 1
        
        end

        return @arr
    end
end
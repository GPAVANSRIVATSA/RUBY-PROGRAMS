class Dog
    def initialize (name,breed)
        @name=name
        @breed=breed
    end
    def to_json
        {"name"=>@name,"breed"=>@breed}.to_json
    end
    def setName(name)
        @name=name
    end
    def getName
        @name
    end
    def setBreed(breed)
        @breed=breed
    end
    def getBreed
        @breed
    end
end
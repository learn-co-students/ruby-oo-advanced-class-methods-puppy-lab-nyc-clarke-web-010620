class Dog

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save        
    end

    def save
        @@all << self
    end
    
    def self.all
        @@all
    end

    def self.print_all
        puts self.all.map { |dog| dog.name }       
    end

    def self.clear_all
        self.all.clear
    end

end


dog1 = Dog.new("fido")
dog2 = Dog.new("rover")
dog3 = Dog.new("maverick")

# Dog.print_all
Dog.clear_all
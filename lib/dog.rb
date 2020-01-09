class Dog
    def initialize(name)
        @name = name
        self.save
    end

    attr_writer :name

    @@all  = []

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        self.all.each do |dog|
            puts dog.name
        end
    end

    def save
        self.class.all << self
    end

    def name
        @name
    end


end
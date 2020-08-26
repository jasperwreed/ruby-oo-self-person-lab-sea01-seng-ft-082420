# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name)
        @name = name
        @bank_account=(25)
        @happiness=(8)
        @hygiene=(8)
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        self.happiness += 1
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each { |i| i.happiness += 3 }

        # friend.happiness += 3
        # self.happiness += 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
        # if friend == "Felix"
        #     "Hi Felix! It's Stella. How are you?"
        # end
    end

    # def start_conversation(person, topic)
    #     people = [person, self]
    #     if topic == "politics" 
    #         people.each { |i| i.happiness -= 2 }
    #         "blah blah partisan blah lobbyist"
    #     elsif topic == "weather"
    #         people.each { |i| i.happiness += 1 }
    #         "blah blah sun blah rain"
    #     else
    #         "blah blah blah blah blah"
    #     end
    # end

    def start_conversation(person, topic)
        people = [person, self]
        if topic == "politics" 
            people.each { |i| i.happiness -= 2 }
            blah = "partisan"
            blah2 = "lobbyist"
            "blah blah #{blah} blah #{blah2}"
        elsif topic == "weather"
            people.each { |i| i.happiness += 1 }
            blah = "sun"
            blah2 = "rain"
            "blah blah #{blah} blah #{blah2}"
        else
            blah = "blah"
            blah2 = "blah"
            "blah blah #{blah} blah #{blah2}"
        end
    end
    
end


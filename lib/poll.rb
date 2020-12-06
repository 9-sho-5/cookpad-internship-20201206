class Poll
    attr_reader :title, :candidates, :dates

    def initialize(title, candidates, dates)
        @title = title
        @candidates = candidates
        @dates = dates
    end
end
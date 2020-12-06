class Poll
    attr_reader :title, :candidates, :dates

    # attr_reader と同じ
    # def title
    #     @title
    # end

    def initialize(title, candidates, dates)
        @title = title
        @candidates = candidates
        @dates = dates
    end
end
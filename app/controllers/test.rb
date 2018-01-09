require 'HTTParty'

# class TestController
#     include HTTParty
#     base_uri "edutechional-resty.herokuapp.com/"
#
#     def posts
#         self.class.get('/posts.json')
#     end
#
# end
#
# er = TestController.new
#
# er.posts.each do |x|
#     puts "Title: #{x['title']}"
#
# end


class StackExchange
    include HTTParty
    # base_uri 'api.stackexchange.com'
    base_uri 'http://animatedgif.me'

    # def initialize(service, page)
    #     @options = {query: {site: service}}
    #
    # end

    def questions
        self.class.get('/2.2/questions', @options)
    end

    def gif
        self.class.get('/gifs/1104')
    end

    def users
        self.class.get('/2.2/users', @options)
    end
end

# se = StackExchange.new('stackoverflow', 1)
ag = StackExchange.new
puts ag.gif.to_json

# response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
#
# puts response.message

require 'pry'
require 'HTTParty'


class SearchController < ApplicationController
# class SearchController

    include HTTParty
    base_uri 'http://animatedgif.me'



    def cats
        gif = self.class.get('/gifs/1104.json')
        render json: gif
    end

    # er = SearchController.new
    # puts er.cats


end

class GamesController < ApplicationController
require "open-uri"
require "json"
  def new
    # generate an array of 10 random letters:
    letters = ("a".."z").to_a
    @letters = Array.new(10) { letters.sample }
    @generated_at = Time.now
  end

  def score
    # raise
    # debugger
    @submitted_at = Time.now
    @word = params[:answer]
    @letters = params[:letters].split(" ")




    url = "https://dictionary.lewagon.com/#{params[:answer]}"
    URI.open(url)
    @valid_english = true
  end
end

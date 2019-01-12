require "yaml"
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
  get_meaning = {}
  get_emoticon = {}
  binding.pry 
  library.each do |meaning, emoticon|
    get_meaning[emoticon[1]] = meaning
    get_emoticon[emoticon[0]] = emoticon[1]
  end 
  result = {"get_meaning" => get_meaning, "get_emoticon" => get_emoticon}
  result
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
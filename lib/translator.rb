require "yaml"
require 'pry'

def load_library(file_path)
  library = YAML.load_file(file_path)
  get_meaning = {}
  get_emoticon = {}
  library.each do |meaning, emoticon|
    get_meaning[emoticon[1]] = meaning  #emoticon[1] is the second index of the array, which is the japanese emoticons
    get_emoticon[emoticon[0]] = emoticon[1] #emoticon[0] is the first index of the array, which is the english emoticons
  end 
  return_value = {"get_meaning" => get_meaning, "get_emoticon" => get_emoticon}
  return_value
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  translation = nil 
  library["get_emoticon"].each do |english, japanese|
    if emoticon == english
      translation = japanese
    end
  end 
  if translation == nil
    return "Sorry, that emoticon was not found"
  else 
    return translation
  end 
end

def get_english_meaning
  # code goes here
end
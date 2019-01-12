require "yaml"

def load_library(file_path)
  library = YAML.load_file(file_path)
  get_meaning = {}
  get_emoticon = {}
  library.each do |meaning, emoticon|
    get_meaning[emoticon[1]] = meaning  
    get_emoticon[emoticon[0]] = emoticon[1] 
  end 
  {"get_meaning" => get_meaning, "get_emoticon" => get_emoticon}
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  if library["get_emoticon"][emoticon] == nil 
    "Sorry, that emoticon was not found"
  else
    library["get_emoticon"][emoticon]
  end 
end 

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  if library["get_meaning"][emoticon] == nil 
    "Sorry, that emoticon was not found"
  else
    library["get_meaning"][emoticon]
  end
end
require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each {|styleName, langsObj|
    langsObj.each {|lang, itsDescripObj|
      new_hash[lang] = itsDescripObj
      #new_hash[lang][:style] = []
      new_hash[lang][:style].push(styleName)
    }

  }
  puts new_hash
  new_hash
end

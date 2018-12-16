require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each {|styleName, langsObj|
    langsObj.each {|lang, itsDescripObj|
      new_hash[lang] = itsDescripObj
      if new_hash[lang][:style] == nil
        new_hash[lang][:style] = []
      end

      new_hash[lang][:style].push(styleName)
    }

  }
  puts new_hash
  new_hash
end

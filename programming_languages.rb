require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each {|styleName, langsObj|
    langsObj.each {|lang, itsDescripObj|
      new_hash[lang] = itsDescripObj
      keysofHash = new_hash[lang].values
      if keysofHash.include?(:style)
        new_hash[lang][:style].push(styleName)
      else
        new_hash[lang][:style] = []
      end


    }

  }
  puts new_hash
  new_hash
end

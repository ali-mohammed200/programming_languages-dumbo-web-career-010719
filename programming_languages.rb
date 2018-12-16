def reformat_languages(languages)
  new_hash = {}
  languages.each {|styleName, langsObj|
    langsObj.each {|lang, itsDescripObj|
      new_hash[lang] = itsDescripObj
      new_hash[lang][:style] = []
      new_hash[lang][:style].push(styleName)
    }
  }
  new_hash
end

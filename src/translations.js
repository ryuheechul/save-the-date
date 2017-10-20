'use strict'

const translations = {
  "ko-KR": {
    "pageTitle": "Lily와 희철의 결혼식에 초대합니다!",
    "topTitle": "초대합니다",
  },
  "en-US": {
    "pageTitle": "Save the date!",
    "topTitle": "She said yes!",
  }
}

function findSimilarInstead(lang){
  const justLang = lang.substr(0,2)

  for (const key in translations) {
    if (key.substr(0,2) == justLang) {
      return translations[key]
    }
  }
  return null
}

module.exports = {
  translationsFor: function (lang){
    return translations[lang] || findSimilarInstead(lang) || translations['en-US']
  }
}

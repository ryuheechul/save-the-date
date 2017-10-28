'use strict'

const translations = {
  "ko-KR": {
    pageTitle: "Lily와 희철의 결혼식에 초대합니다!",
    topTitle: "초대합니다!",
    saveTheDate: "4월 28일 11:00 AM",
    lily: "릴리",
    heechul: "희철",
    tellDDay: "일시: {{dDay}}.",
    howFar: "{{daysLeft}}일 남았습니다.",
    howFars: "{{daysLeft}}일 남았습니다.",
    addToCal: "내 캘런더에 추가하기",
    weddAddr: "서울특별시 중구 장충단로 72 한국자유총연맹",
    fromYaksu: "약수역에서 셔틀버스",
    fromHanganjin: "한강진 역에서 버스타기: ",
  },
  "en-US": {
    pageTitle: "Save the date!",
    topTitle: "She said yes!",
    saveTheDate: "Save the date!",
    lily: "Lily",
    heechul: "Heechul",
    tellDDay: "D-Day is {{dDay}}.",
    howFar: "{{daysLeft}} day away from today.",
    howFars: "{{daysLeft}} days away from today.",
    addToCal: "Add to your calendar",
    weddAddr: "72 Jangchungdan-ro, Jangchungdong 2(i)-ga, Jung-gu, Seoul",
    fromYaksu: "shuttle bus from yaksoo station",
    fromHanganjin: "bus from hanganjin station: ",
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

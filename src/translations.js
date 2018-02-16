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
    weddAddr: "서울특별시 중구 장충단로 72 한국자유총연맹, 제이그랜하우스 젝시가든",
    weddAddrSub: "국립극장 맞은편, 반얀트리 호텔 옆",
    shuttle: "3호선 동대입구역 2번 출구 태극당 앞",
    bus: `[국립극장 앞 하차]
2, 5: (3호선 동대입구역 6번 출구 / 3, 4호선 충무로역 4번 출구)
3: 6호선 이태원역 4번출구 앞 해밀턴 호텔 정류
420: (개포동 - 강남역 - 청량리)
`,
    subway: `[3호선 동대입구역 하차]
도보: 6번출구 (약 10분)
[2, 4, 5호선 동대문역사문화공원역 하차]
6번 출구 앞 버스 420번 환승 후 국립극장 앞 하차 (2정거장)`,
    parking: "네비게이션: \"남산제이그랜하우스\" 또는 \"한국자유총연맹\" 입력\n주차: 웨딩홀에 1,500대 주차 가능",
    photo: "사진",
    date: "날짜",
    map: "지도",
    top: "위로",
  },
  "en-US": {
    pageTitle: "Save the date!",
    topTitle: "She said yes!",
    saveTheDate: "Save the date!",
    lily: "Lily",
    heechul: "Heechul",
    tellDDay: "D-Day is {{dDay}}.",
    howFar: "{{daysLeft}} day from today.",
    howFars: "{{daysLeft}} days from today.",
    addToCal: "Add to your calendar",
    weddAddr: "Zexy Garden at Namsan J-Gran House, 72 Jangchungdan-ro, Jung-gu, Seoul",
    weddAddrSub: "directly across from the National Theater of Korea, next to the Banyan Tree Hotel",
    shuttle: "from Dongguk Univ. station (line 3), go out exit 2 and get the free shuttle bus in front of Taegeukdang Bakery",
    bus: `[get off at the stop for the National Theater of Korea]
Namsan local bus (yellow) 2, 3, 5: go out exit 6 from Dongguk Univ. stn and take the bus for one stop
Blue bus 420: go out exit 2 from Dongguk Univ. stn to get to the bus stop and take 420 for two stops
`,
    subway: `[Dongguk Univ. station, line 3]
J-Gran House is a 10-minute uphill walk from exit 6`,
    parking: `taxi: enter "Namsan J-Gran House" or "Korea Freedom Federation" in your navigation
parking: 1500 available parking spots on-site`,
    photo: "Photo",
    date: "Date",
    map: "Map",
    top: "Top",
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

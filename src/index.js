import './main.css';
import { Main } from './Main.elm';
import moment from 'moment';
import 'moment-timezone';
import { translationsFor } from './translations.js';

const translations = translationsFor(navigator.language || navigator.userLanguage)

document.title = translations.pageTitle || document.title

const flags = (function(){
  const dDay = moment.tz("2018-04-28 11:00", "Asia/Seoul");
  const localTz = moment.tz.guess();
  const localNow = moment().tz(localTz);
  const localDay = localNow.startOf('day');
  const dDayDay = dDay.clone().tz(localTz).startOf('day');
  const dDayDiff = localDay.diff(dDayDay, 'days');
  const diffAbs = Math.abs(dDayDiff)

  return {
    dDay: dDay.format('YYYY-MM-DD h:mm A z'),
    untilDDay: Number(diffAbs),
    translations: translations
  }
})();

Main.embed(document.getElementById('root'), flags);

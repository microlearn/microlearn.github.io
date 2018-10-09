require! {
  fs
  #hanzi
}

pinyinref = ['a','ai','an','ang','ao','ba','bai','ban','bang','bao','bei','ben','beng','bi','bian','biao','bie','bin','bing','bo','bu','ca','cai','can','cang','cao','ce','cen','ceng','cha','chai','chan','chang','chao','che','chen','cheng','chi','chong','chou','chu','chua','chuai','chuan','chuang','chui','chun','chuo','ci','cong','cou','cu','cuan','cui','cun','cuo','da','dai','dan','dang','dao','de','deng','di','dian','diang','diao','die','ding','diu','dong','dou','du','duan','dui','dun','duo','e','ei','en','er','fa','fan','fang','fei','fen','feng','fo','fou','fu','ga','gai','gan','gang','gao','ge','gei','gen','geng','gong','gou','gu','gua','guai','guan','guang','gui','gun','guo','ha','hai','han','hang','hao','he','hei','hen','heng','hong','hou','hu','hua','huai','huan','huang','hui','hun','huo','ji','jia','jian','jiang','jiao','jie','jin','jing','jiong','jiu','ju','juan','jue','jun','ka','kai','kan','kang','kao','ke','ken','keng','kong','kou','ku','kua','kuai','kuan','kuang','kui','kun','kuo','la','lai','lan','lang','lao','le','lei','leng','li','lian','liang','liao','lie','lin','ling','liu','long','lou','lu','l\u00FC','luan','l\u00FCe','lun','luo','ma','mai','man','mang','mao','me','mei','men','meng','mi','mian','miao','mie','min','ming','miu','mo','mou','mu','na','nai','nan','nang','nao','ne','nei','nen','neng','ni','nia','nian','niang','niao','nie','nin','ning','niu','nong','nou','nu','n\u00FC','nuan','n\u00FCe','nuo','nun','ou','pa','pai','pan','pang','pao','pei','pen','peng','pi','pian','piao','pie','pin','ping','po','pou','pu','qi','qia','qian','qiang','qiao','qie','qin','qing','qiong','qiu','qu','quan','que','qun','ran','rang','rao','re','ren','reng','ri','rong','rou','ru','ruan','rui','run','ruo','sa','sai','san','sang','sao','se','sei','sen','seng','sha','shai','shan','shang','shao','she','shei','shen','sheng','shi','shong','shou','shu','shua','shuai','shuan','shuang','shui','shun','shuo','si','song','sou','su','suan','sui','sun','suo','ta','tai','tan','tang','tao','te','teng','ti','tian','tiao','tie','ting','tong','tou','tu','tuan','tui','tun','tuo','wa','wai','wan','wang','wei','wen','weng','wo','wu','xi','xia','xian','xiang','xiao','xie','xin','xing','xiong','xiu','xu','xuan','xue','xun','ya','yai','yan','yang','yao','ye','yi','yin','ying','yo','yong','you','yu','yuan','yue','yun','za','zai','zan','zang','zao','ze','zei','zen','zeng','zha','zhai','zhan','zhang','zhao','zhe','zhei','zhen','zheng','zhi','zhong','zhou','zhu','zhua','zhuai','zhuan','zhuang','zhui','zhun','zhuo','zi','zong','zou','zu','zuan','zui','zun','zuo']
zhuyinref = ['\u311A','\u311E','\u3122','\u3124','\u3120','\u3105\u311A','\u3105\u311E','\u3105\u3122','\u3105\u3124','\u3105\u3120','\u3105\u311F','\u3105\u3123','\u3105\u3125','\u3105\u30FC','\u3105\u30FC\u3122','\u3105\u30FC\u3120','\u3105\u30FC\u311D','\u3105\u30FC\u3123','\u3105\u30FC\u3125','\u3105\u311B','\u3105\u3128','\u3118\u311A','\u3118\u311E','\u3118\u3122','\u3118\u3124','\u3118\u3120','\u3118\u311C','\u3118\u3123','\u3118\u3125','\u3114\u311A','\u3114\u311E','\u3114\u3122','\u3114\u3124','\u3114\u3120','\u3114\u311C','\u3114\u3123','\u3114\u3125','\u3114','\u3114\u3128\u3125','\u3114\u3121','\u3114\u3128','\u3114\u3128\u311A','\u3114\u3128\u311E','\u3114\u3128\u3122','\u3114\u3128\u3124','\u3114\u3128\u311F','\u3114\u3128\u3123','\u3114\u3128\u311B','\u3118','\u3118\u3128\u3125','\u3118\u3121','\u3118\u3128','\u3118\u3128\u3122','\u3118\u3128\u311F','\u3118\u3128\u3123','\u3118\u3128\u311B','\u3109\u311A','\u3109\u311E','\u3109\u3122','\u3109\u3124','\u3109\u3120','\u3109\u311C','\u3109\u3125','\u3109\u30FC','\u3109\u30FC\u3122','\u3109\u30FC\u3124','\u3109\u30FC\u3120','\u3109\u30FC\u311D','\u3109\u30FC\u3125','\u3109\u30FC\u3121','\u3109\u3128\u3125','\u3109\u3121','\u3109\u3128','\u3109\u3128\u3122','\u3109\u3128\u311F','\u3109\u3128\u3123','\u3109\u3128\u311B','\u311C','\u311F','\u3123','\u3126','\u3108\u311A','\u3108\u3122','\u3108\u3124','\u3108\u311F','\u3108\u3123','\u3108\u3125','\u3108\u311B','\u3108\u3121','\u3108\u3128','\u310D\u311A','\u310D\u311E','\u310D\u3122','\u310D\u3124','\u310D\u3120','\u310D\u311C','\u310D\u311F','\u310D\u3123','\u310D\u3125','\u310D\u3128\u3125','\u310D\u3121','\u310D\u3128','\u310D\u3128\u311A','\u310D\u3128\u311E','\u310D\u3128\u3122','\u310D\u3128\u3124','\u310D\u3128\u311F','\u310D\u3128\u3123','\u310D\u3128\u311B','\u310F\u311A','\u310F\u311E','\u310F\u3122','\u310F\u3124','\u310F\u3120','\u310F\u311C','\u310F\u311F','\u310F\u3123','\u310F\u3125','\u310F\u3128\u3125','\u310F\u3121','\u310F\u3128','\u310F\u3128\u311A','\u310F\u3128\u311E','\u310F\u3128\u3122','\u310F\u3128\u3124','\u310F\u3128\u311F','\u310F\u3128\u3123','\u310F\u3128\u311B','\u3110\u30FC','\u3110\u30FC\u311A','\u3110\u30FC\u3122','\u3110\u30FC\u3124','\u3110\u30FC\u3120','\u3110\u30FC\u311D','\u3110\u30FC\u3123','\u3110\u30FC\u3125','\u3110\u3129\u3125','\u3110\u30FC\u3121','\u3110\u3129','\u3110\u3129\u3122','\u3110\u3129\u311D','\u3110\u3129\u3123','\u310E\u311A','\u310E\u311E','\u310E\u3122','\u310E\u3124','\u310E\u3120','\u310E\u311C','\u310E\u3123','\u310E\u3125','\u310E\u3128\u3125','\u310E\u3121','\u310E\u3128','\u310E\u3128\u311A','\u310E\u3128\u311E','\u310E\u3128\u3122','\u310E\u3128\u3124','\u310E\u3128\u311F','\u310E\u3128\u3123','\u310E\u3128\u311B','\u310C\u311A','\u310C\u311E','\u310C\u3122','\u310C\u3124','\u310C\u3120','\u310C\u311C','\u310C\u311F','\u310C\u3125','\u310C\u30FC','\u310C\u30FC\u3122','\u310C\u30FC\u3124','\u310C\u30FC\u3120','\u310C\u30FC\u311D','\u310C\u30FC\u3123','\u310C\u30FC\u3125','\u310C\u30FC\u3121','\u310C\u3128\u3125','\u310C\u3121','\u310C\u3128','\u310C\u3129','\u310C\u3128\u3122','\u310C\u3129\u311D','\u310C\u3128\u3123','\u310C\u3128\u311B','\u3107\u311A','\u3107\u311E','\u3107\u3122','\u3107\u3124','\u3107\u3120','\u3107\u311C','\u3107\u311F','\u3107\u3123','\u3107\u3125','\u3107\u30FC','\u3107\u30FC\u3122','\u3107\u30FC\u3120','\u3107\u30FC\u311D','\u3107\u30FC\u3123','\u3107\u30FC\u3125','\u3107\u30FC\u3121','\u3107\u311B','\u3107\u3121','\u3107\u3128','\u310B\u311A','\u310B\u311E','\u310B\u3122','\u310B\u3124','\u310B\u3120','\u310B\u311B','\u310B\u311F','\u310B\u3123','\u310B\u3125','\u310B\u30FC','\u310B\u30FC\u311A','\u310B\u30FC\u3122','\u310B\u30FC\u3124','\u310B\u30FC\u3120','\u310B\u30FC\u311D','\u310B\u30FC\u3123','\u310B\u30FC\u3125','\u310B\u30FC\u3121','\u310B\u3128\u3125','\u310B\u3121','\u310B\u3128','\u310B\u3129','\u310B\u3128\u3122','\u310B\u3129\u311D','\u310B\u3128\u311B','\u310B\u3128\u3123','\u3121','\u3106\u311A','\u3106\u311E','\u3106\u3122','\u3106\u3124','\u3106\u3120','\u3106\u311F','\u3106\u3123','\u3106\u3125','\u3106\u30FC','\u3106\u30FC\u3122','\u3106\u30FC\u3120','\u3106\u30FC\u311D','\u3106\u30FC\u3123','\u3106\u30FC\u3125','\u3106\u311B','\u3106\u3121','\u3106\u3128','\u3111\u30FC','\u3111\u30FC\u311A','\u3111\u30FC\u3122','\u3111\u30FC\u3124','\u3111\u30FC\u3120','\u3111\u30FC\u311D','\u3111\u30FC\u3123','\u3111\u30FC\u3125','\u3111\u3129\u3125','\u3111\u30FC\u3121','\u3111\u3129','\u3111\u3129\u3122','\u3111\u3129\u311D','\u3111\u3129\u3123','\u3116\u3122','\u3116\u3124','\u3116\u3120','\u3116\u311C','\u3116\u3123','\u3116\u3125','\u3116','\u3116\u3128\u3125','\u3116\u3121','\u3116\u3128','\u3116\u3128\u3122','\u3116\u3128\u311F','\u3116\u3128\u3123','\u3116\u3128\u311B','\u3119\u311A','\u3119\u311E','\u3119\u3122','\u3119\u3124','\u3119\u3120','\u3119\u311C','\u3119\u311F','\u3119\u3123','\u3119\u3125','\u3115\u311A','\u3115\u311E','\u3115\u3122','\u3115\u3124','\u3115\u3120','\u3115\u311C','\u3115\u311F','\u3115\u3123','\u3115\u3125','\u3115','\u3115\u3121\u3125','\u3115\u3121','\u3115\u3128','\u3115\u3128\u311A','\u3115\u3128\u311E','\u3115\u3128\u3122','\u3115\u3128\u3124','\u3115\u3128\u311F','\u3115\u3128\u3123','\u3115\u3128\u311B','\u3119','\u3119\u3128\u3125','\u3119\u3121','\u3119\u3128','\u3119\u3128\u3122','\u3119\u3128\u311F','\u3119\u3128\u3123','\u3119\u3128\u311B','\u310A\u311A','\u310A\u311E','\u310A\u3122','\u310A\u3124','\u310A\u3120','\u310A\u311C','\u310A\u3125','\u310A\u30FC','\u310A\u30FC\u3122','\u310A\u30FC\u3120','\u310A\u30FC\u311D','\u310A\u30FC\u3125','\u310A\u3128\u3125','\u310A\u3121','\u310A\u3128','\u310A\u3128\u3122','\u310A\u3128\u311F','\u310A\u3128\u3123','\u310A\u3128\u311B','\u3128\u311A','\u3128\u311E','\u3128\u3122','\u3128\u3124','\u3128\u311F','\u3128\u3123','\u3128\u3125','\u3128\u311B','\u3128','\u3112\u30FC','\u3112\u30FC\u311A','\u3112\u30FC\u3122','\u3112\u30FC\u3124','\u3112\u30FC\u3120','\u3112\u30FC\u311D','\u3112\u30FC\u3123','\u3112\u30FC\u3125','\u3112\u3129\u3125','\u3112\u30FC\u3121','\u3112\u3129','\u3112\u3129\u3122','\u3112\u3129\u311D','\u3112\u3129\u3123','\u30FC\u311A','\u30FC\u311E','\u30FC\u3122','\u30FC\u3124','\u30FC\u3120','\u30FC\u311D','\u30FC','\u30FC\u3123','\u30FC\u3125','\u30FC\u311B','\u3129\u3125','\u30FC\u3121','\u3129','\u3129\u3122','\u3129\u311D','\u3129\u3123','\u3117\u311A','\u3117\u311E','\u3117\u3122','\u3117\u3124','\u3117\u3120','\u3117\u311C','\u3117\u311F','\u3117\u3123','\u3117\u3125','\u3113\u311A','\u3113\u311E','\u3113\u3122','\u3113\u3124','\u3113\u3120','\u3113\u311C','\u3113\u311F','\u3113\u3123','\u3113\u3125','\u3113','\u3113\u3128\u3125','\u3113\u3121','\u3113\u3128','\u3113\u3128\u311A','\u3113\u3128\u311E','\u3113\u3128\u3122','\u3113\u3128\u3124','\u3113\u3128\u311F','\u3113\u3128\u3123','\u3113\u3128\u311B','\u3117','\u3117\u3128\u3125','\u3117\u3121','\u3117\u3128','\u3117\u3128\u3122','\u3117\u3128\u311F','\u3117\u3128\u3123','\u3117\u3128\u311B']
ztone = ['', '\u02CA', '\u02C7', '\u02CB', '\u30FB']

pinyin_base_to_zhuyin = {}
do ->
  if pinyinref.length != zhuyinref.length
    console.log 'mismatch in length of pinyinref and zhuyinref'
  for i in [0 til pinyinref.length]
    pinyin_base = pinyinref[i]
    zhuyin_base = zhuyinref[i]
    pinyin_base_to_zhuyin[pinyin_base] = zhuyin_base

pinyin_to_zhuyin_nospaces = (pinyin) ->
  pinyin = pinyin.toLowerCase()
  pinyin = pinyin.split('v').join('\u00FC')
  if pinyin == 'r5'
    return 'ㄦ'
  last_char = pinyin[pinyin.length - 1]
  if '12345'.indexOf(last_char) != -1
    zhuyin_tone = ztone[parseInt(last_char) - 1]
    pinyin_base = pinyin.substr(0, pinyin.length - 1)
    zhuyin_base = pinyin_base_to_zhuyin[pinyin_base]
    if zhuyin_base? and zhuyin_tone?
      return zhuyin_base + zhuyin_tone
  console.log('invalid pinyin ' + pinyin)
  return pinyin

pinyin_to_zhuyin = (pinyin_full) ->
  output = []
  for pinyin in pinyin_full.split(' ')
    pinyin = pinyin.toLowerCase()
    pinyin = pinyin.split('v').join('\u00FC')
    if pinyin == 'r5'
      output.push('ㄦ')
      continue
    last_char = pinyin[pinyin.length - 1]
    if '12345'.indexOf(last_char) != -1
      zhuyin_tone = ztone[parseInt(last_char) - 1]
      pinyin_base = pinyin.substr(0, pinyin.length - 1)
      zhuyin_base = pinyin_base_to_zhuyin[pinyin_base]
      if zhuyin_base? and zhuyin_tone?
        output.push(zhuyin_base + zhuyin_tone)
        continue
    #console.log('invalid pinyin ' + pinyin_full)
    return pinyin_full
  return output.join(' ')
  #output = [pinyin_to_zhuyin_nospaces(x) for x in pinyin.split(' ')]
  #return output.join(' ')

simplified_to_info = {}
do ->
  for line in fs.readFileSync('cccedict-canto-readings.txt', 'utf-8').split('\n')
    if line[0] == '#'
      continue
    origline = line
    line = line.trim()
    if line.length == 0
      continue
    traditional = line.substr(0, line.indexOf(' ')).trim()
    line = line.substr(line.indexOf(' ')).trim()
    simplified = line.substr(0, line.indexOf(' ')).trim()
    line = line.substr(line.indexOf(' ')).trim()
    if line.indexOf('[') != 0
      console.log 'no pinyin available for word'
      console.log origline
    pinyin = line.substr(0, line.indexOf('{')).trim()
    pinyin = pinyin.split('[').join('').split(']').join('').trim()
    line = line.substr(line.indexOf('{')).trim()
    if line.indexOf('{') != 0
      console.log 'no jyutping available for word'
      console.log origline
    jyutping = line.split('{').join('').split('}').join('').trim()
    zhuyin = pinyin_to_zhuyin(pinyin)
    info = {traditional, simplified, pinyin, zhuyin, jyutping}
    if not simplified_to_info[simplified]?
      simplified_to_info[simplified] = info

#process.exit()

#hanzi.start()

zhuyin_syllable_to_html = (zhuyin_syllable) ->
  last = zhuyin_syllable[zhuyin_syllable.length - 1]
  color = 'red'
  if last == 'ˊ'
    color = 'orange'
  if last == 'ˇ'
    color = 'green'
  if last == 'ˋ'
    color = 'blue'
  if last == '˙ '
    color = 'black'
  return '<span style="color: ' + color + '">' + zhuyin_syllable + '</span>'

zhuyin_to_html = (zhuyin) ->
  return [zhuyin_syllable_to_html(x) for x in zhuyin.split(' ')].join(' ')

orig_words = JSON.parse fs.readFileSync('orig_words.json', 'utf-8')
output = {}
for word,word_info of orig_words
  word_info = JSON.parse JSON.stringify word_info
  {wd, py} = word_info.cn
  #console.log wd
  new_wd = wd
  new_py = py
  new_zi = py
  new_zih = py
  new_jp = ''
  info = simplified_to_info[wd]
  if info?
    {traditional, simplified, pinyin, zhuyin, jyutping} = info
    if traditional != simplified
      new_wd = traditional + '【' + wd + '】'
    new_py = zhuyin + '　' + jyutping
    new_zi = zhuyin
    new_zih = zhuyin_to_html zhuyin
    new_jp = jyutping
  word_info.cn = {wd: new_wd, py: new_py, jp: new_jp, zi: new_zi, zih: new_zih}
  output[word] = word_info
  #definition = hanzi.definitionLookup(wd)
  #if definition? and definition[0].traditional?
  #  traditional = definition[0].traditional
  #  if traditional != wd
  #    new_wd = traditional + '【' + wd + '】'
  #    console.log new_wd
#console.log orig_words

console.log JSON.stringify output

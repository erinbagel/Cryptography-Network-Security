︠9a8fa718-0442-4346-99ab-8556c2109a98︠
en_alphabet = "abcdefghijklmnopqrstuvwxyz"

def is_alphabetic_char(c):
    return (c.lower() in en_alphabet)

def char_to_num(c):
    return en_alphabet.index(c.lower())

def num_to_char(x):
    return en_alphabet[x % 26]

def CaesarEncrypt(k, plaintext):
    ciphertext = ""
    for j in xrange(len(plaintext)):
        p = plaintext[j]
        if is_alphabetic_char(p):
            x = (k + char_to_num(p) % 26)
            c = num_to_char(x)
        else:
            c = p
        ciphertext += c
    return ciphertext


k = 6;
plaintext = 'Get me a vanilla ice cream, make it a double.'
CaesarEncrypt(k, plaintext)
︡98fc4d40-46d8-4cf5-8373-0f53be6ba131︡{"stdout":"'mkz sk g bgtorrg oik ixkgs, sgqk oz g juahrk.'\n"}︡{"done":true}︡
︠fceed207-30be-46cb-8369-9e6d4efca9fbs︠

k = 15;
plaintext = "I don't much care for Leonard Cohen."
CaesarEncrypt(k, plaintext)
︡bc656eb1-b1e9-4ced-8669-ff8b540a857b︡{"stdout":"\"x sdc'i bjrw rpgt udg atdcpgs rdwtc.\"\n"}︡{"done":true}︡
︠ba8ba778-c0ca-4f4a-9bc3-4532c3334eb6s︠

k = 16;
plaintext = "I like root beer floats."
CaesarEncrypt(k, plaintext)
︡29493696-b672-45c9-9daf-9a34c328593a︡{"stdout":"'y byau heej ruuh vbeqji.'\n"}︡{"done":true}︡
︠27d7eb9d-9cc8-4108-9e48-76ca0e7299d9s︠

def CaesarDecrypt(k, ciphertext):
    plaintext = ""
    for j in xrange(len(ciphertext)):
        c = ciphertext[j]
        if is_alphabetic_char(c):
            x = (char_to_num(c) - k) % 26
            p = num_to_char(x)
        else:
            p = c
        plaintext += p
    return plaintext

k = 12;
ciphertext = "nduzs ftq buzq oazqe."
CaesarDecrypt(k, ciphertext)
︡d4bae624-74e8-41e9-9959-5e7b8b0d75b5︡{"stdout":"'bring the pine cones.'\n"}︡{"done":true}︡
︠7efa3cb9-c82e-4bec-af9f-dfdaa644eebbs︠

k = 3;
ciphertext = "fdhvdu qhhgv wr orvh zhljkw."
CaesarDecrypt(k, ciphertext)
︡951ba827-29c2-4413-af53-d65afcde4624︡{"stdout":"'caesar needs to lose weight.'\n"}︡{"done":true}︡
︠5f8a9f71-0926-4ef7-9956-8216318cc56ds︠

k = 20;
ciphertext = "ufgihxm uly numnys."
CaesarDecrypt(k, ciphertext)
︡c177c33b-dddf-4fb7-ba28-714a2cb02277︡{"stdout":"'almonds are tastey.'\n"}︡{"done":true}︡
︠3391ff53-555b-46c9-84f7-2d151c3dd798s︠

def BruteForceAttack(ciphertext, keyword=None):
    for k in xrange(26):
        plaintext = CaesarDecrypt(k, ciphertext)
        if (None == keyword) or (keyword in plaintext):
            print "key", k, "decryption", plaintext
    return

ciphertext = 'gryy gurz gb tb gb nzoebfr puncry.'
BruteForceAttack(ciphertext, 'chapel')
︡eb156597-db1d-4c2d-9aad-58096b55680a︡{"stdout":"key 13 decryption tell them to go to ambrose chapel.\n"}︡{"done":true}︡
︠257c73c8-22fb-495d-b60c-9eef265399c0s︠

ciphertext = 'wziv kyv jyfk nyve kyv tpdsrcj tirjy.'
BruteForceAttack(ciphertext, 'cymbal')
︡49d670a8-9400-426e-a2bd-8c0de5fef250︡{"stdout":"key 17 decryption fire the shot when the cymbals crash.\n"}︡{"done":true}︡
︠c89a898f-e2dd-43c4-becc-ee91f63ce74as︠

ciphertext = 'baeeq klwosjl osk s esf ozg cfwo lgg emuz.'
BruteForceAttack(ciphertext)
︡bc02fe7b-bd15-451d-86ab-5b4d33c51d8a︡{"stdout":"key 0 decryption baeeq klwosjl osk s esf ozg cfwo lgg emuz.\nkey 1 decryption azddp jkvnrik nrj r dre nyf bevn kff dlty.\nkey 2 decryption zycco ijumqhj mqi q cqd mxe adum jee cksx.\nkey 3 decryption yxbbn hitlpgi lph p bpc lwd zctl idd bjrw.\nkey 4 decryption xwaam ghskofh kog o aob kvc ybsk hcc aiqv.\nkey 5 decryption wvzzl fgrjneg jnf n zna jub xarj gbb zhpu.\nkey 6 decryption vuyyk efqimdf ime m ymz ita wzqi faa ygot.\nkey 7 decryption utxxj dephlce hld l xly hsz vyph ezz xfns.\nkey 8 decryption tswwi cdogkbd gkc k wkx gry uxog dyy wemr.\nkey 9 decryption srvvh bcnfjac fjb j vjw fqx twnf cxx vdlq.\nkey 10 decryption rquug abmeizb eia i uiv epw svme bww uckp.\nkey 11 decryption qpttf zaldhya dhz h thu dov ruld avv tbjo.\nkey 12 decryption posse yzkcgxz cgy g sgt cnu qtkc zuu sain.\nkey 13 decryption onrrd xyjbfwy bfx f rfs bmt psjb ytt rzhm.\nkey 14 decryption nmqqc wxiaevx aew e qer als oria xss qygl.\nkey 15 decryption mlppb vwhzduw zdv d pdq zkr nqhz wrr pxfk.\nkey 16 decryption lkooa uvgyctv ycu c ocp yjq mpgy vqq owej.\nkey 17 decryption kjnnz tufxbsu xbt b nbo xip lofx upp nvdi.\nkey 18 decryption jimmy stewart was a man who knew too much.\nkey 19 decryption ihllx rsdvzqs vzr z lzm vgn jmdv snn ltbg.\nkey 20 decryption hgkkw qrcuypr uyq y kyl ufm ilcu rmm ksaf.\nkey 21 decryption gfjjv pqbtxoq txp x jxk tel hkbt qll jrze.\nkey 22 decryption feiiu opaswnp swo w iwj sdk gjas pkk iqyd.\nkey 23 decryption edhht nozrvmo rvn v hvi rcj fizr ojj hpxc.\nkey 24 decryption dcggs mnyquln qum u guh qbi ehyq nii gowb.\nkey 25 decryption cbffr lmxptkm ptl t ftg pah dgxp mhh fnva.\n"}︡{"done":true}︡










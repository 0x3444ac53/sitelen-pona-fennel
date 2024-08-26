(macro 󱤽 [num]
  (local 󱤽󱤄 {:󱤄 100 :󱤼 20 :󱤭 5 :󱥮 2 :󱥳 1})
  (let [tbl []]
    (var acc 0)
    (for [i 1 (length num) 4]
       (table.insert tbl (. 󱤽󱤄 (num:sub i (+ i 3)))))
    (for [i 1 (length tbl)]
      (let [cur (. tbl i)
            next (. tbl (+ i 1))]
        (when next
          (if (< cur next)
            (do
              (tset tbl (+ i 1) (* cur next))
              (tset tbl i nil))))))
   (each [k v (pairs tbl)]
     (set acc (+ acc v)))
   acc))

(macro 󱤎 [󱤌 & 󱥉]
  `(fn ,󱤌 ,(unpack 󱥉)))

(macro 󱤂 [& rest]
  `(not ,(unpack rest)))

(macro 󱥁󱤧󱤬󱤡 [& body]
  `(when ,(unpack body)))

(macro 󱥁󱤧󱤬󱤂󱤬󱤡 [& rest]
  `(if ,(unpack rest)))

(macro 󱤊 [& 󱤌]
  `(and ,(unpack 󱤌)))

(macro 󱤇 [& 󱤌]
  `(or ,(unpack 󱤌)))

(macro 󱦅 [& 󱤌]
  `(. ,(unpack 󱤌)))

(macro 󱤬 [󱤌 & 󱥉]
  `(let ,󱤌 ,(unpack 󱥉)))

(macro 󱥌󱤉󱥂󱥩 [󱥂 & 󱤾]
  `(var ,󱥂 ,(unpack 󱤾)))

(macro 󱥌󱤉󱥂󱤈󱥩 [󱥂 & 󱤾]
  `(local ,󱥂 ,(unpack 󱤾)))

(macro 󱥬󱥩󱤴 [󱤌]
  `(print ,󱤌))

(󱥌󱤉󱥂󱤈󱥩 󱥬󱤍󱥩󱥬󱥔 
  { :kijetesantakalu "󱦀"
    :kokosila "󱦄"
    :misikeke "󱦇"
    :kepeken "󱤙"
    :monsuta "󱥽"
    :sitelen "󱥠"
    :jasima "󱥿"
    :kalama "󱤕"
    :kipisi "󱥻"
    :kulupu "󱤟"
    :lanpan "󱦅"
    :majuna "󱦢"
    :namako "󱥸"
    :pakala "󱥈"
    :palisa "󱥊"
    :pimeja "󱥏"
    :sijelo "󱥛"
    :sinpin "󱥟"
    :soweli "󱥢"
    :akesi "󱤁"
    :alasa "󱤃"
    :apeja "󱦡"
    :epiku "󱦃"
    :kiwen "󱤛"
    :linja "󱤩"
    :lukin "󱤮"
    :monsi "󱤸"
    :nanpa "󱤽"
    :nasin "󱤿"
    :pilin "󱥎"
    :tenpo "󱥫"
    :tonsi "󱥾"
    :utala "󱥱"
    :anpa "󱤅"
    :ante "󱤆"
    :awen "󱤈"
    :esun "󱤋"
    :insa "󱤏"
    :jaki "󱤐"
    :jelo "󱤒"
    :kala "󱤔"
    :kama "󱤖"
    :kasi "󱤗"
    :kili "󱤚"
    :kule "󱤞"
    :kute "󱤠"
    :lape "󱤢"
    :laso "󱤣"
    :lawa "󱤤"
    :leko "󱥼"
    :lete "󱤦"
    :lili "󱤨"
    :lipu "󱤪"
    :loje "󱤫"
    :luka "󱤭"
    :lupa "󱤯"
    :mama "󱤱"
    :mani "󱤲"
    :meli "󱤳"
    :meso "󱦂"
    :mije "󱤵"
    :moku "󱤶"
    :moli "󱤷"
    :musi "󱤻"
    :mute "󱤼"
    :nasa "󱤾"
    :nena "󱥀"
    :nimi "󱥂"
    :noka "󱥃"
    :olin "󱥅"
    :open "󱥇"
    :pake "󱦠"
    :pali "󱥉"
    :pana "󱥌"
    :pini "󱥐"
    :pipi "󱥑"
    :poka "󱥒"
    :poki "󱥓"
    :pona "󱥔"
    :powe "󱦣"
    :sama "󱥖"
    :seli "󱥗"
    :selo "󱥘"
    :seme "󱥙"
    :sewi "󱥚"
    :sike "󱥜"
    :sina "󱥞"
    :soko "󱦁"
    :sona "󱥡"
    :suli "󱥣"
    :suno "󱥤"
    :supa "󱥥"
    :suwi "󱥦"
    :taso "󱥨"
    :tawa "󱥩"
    :telo "󱥪"
    :toki "󱥬"
    :tomo "󱥭"
    :unpa "󱥯"
    :walo "󱥲"
    :waso "󱥴"
    :wawa "󱥵"
    :weka "󱥶"
    :wile "󱥷"
    :ala "󱤂"
    :ale "󱤄"
    :ali "󱤄"
    :anu "󱤇"
    :ijo "󱤌"
    :ike "󱤍"
    :ilo "󱤎"
    :jan "󱤑"
    :ken "󱤘"
    :kin "󱥹"
    :kon "󱤝"
    :len "󱤥"
    :lon "󱤬"
    :mun "󱤺"
    :oko "󱥺"
    :ona "󱥆"
    :pan "󱥋"
    :sin "󱥝"
    :tan "󱥧"
    :uta "󱥰"
    :wan "󱥳"
    :en "󱤊"
    :jo "󱤓"
    :ko "󱤜"
    :ku "󱦈"
    :la "󱤡"
    :li "󱤧"
    :ma "󱤰"
    :mi "󱤴"
    :mu "󱤹"
    :ni "󱥁"
    :pi "󱥍"
    :pu "󱥕"
    :tu "󱥮"
    :a "󱤀"
    :e "󱤉"
    :n "󱦆"
    :o "󱥄"})

(vim.api.nvim_create_autocmd 
  [:insertCharPre]
  {:pattern "*.fnl"
   :callback (󱤎 []
                (󱥁󱤧󱤬󱤡 (= vim.v.char " ")
                 (󱤬 [󱤩 (string.sub (vim.fn.getline :.) (󱤽 :󱥳) (- (vim.fn.col :.) (󱤽 :󱥳)))
                        [󱥇 󱥐] [(󱤩:find "%w+$")]]
                   (󱥁󱤧󱤬󱤡 (󱤊 󱥇 󱥐)
                     (󱤬 [󱥔󱤇󱥙 (󱦅 󱥬󱤍󱥩󱥬󱥔 (󱤩:sub 󱥇 󱥐))
                            󱥫󱥁󱤡󱤬󱤰 (vim.fn.col :.)]
                       (󱥁󱤧󱤬󱤡 󱥔󱤇󱥙
                        (set vim.v.char "")
                        (vim.schedule (󱤎 [] 
                                        (vim.cmd (.. ".s/" (󱤩:sub 󱥇 󱥐) "/" 󱥔󱤇󱥙 "/"))
                                        (vim.cmd "normal! $")     
                                        (vim.cmd "normal! l")))))))))})

(fn 󱤽 [num]
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

(fn 󱤎 [󱤌 & 󱥉]
  `(fn ,󱤌 ,(unpack 󱥉)))

(fn 󱤂 [& rest]
  `(not ,(unpack rest)))

(fn 󱥁󱤧󱤬󱤡 [& body]
  `(when ,(unpack body)))

(fn 󱥁󱤧󱤬󱤂󱤬󱤡 [& rest]
  `(if ,(unpack rest)))

(fn 󱤊 [& 󱤌]
  `(and ,(unpack 󱤌)))

(fn 󱤇 [& 󱤌]
  `(or ,(unpack 󱤌)))

(fn 󱦅 [& 󱤌]
  `(. ,(unpack 󱤌)))

(fn 󱤬 [󱤌 & 󱥉]
  `(let ,󱤌 ,(unpack 󱥉)))

(fn 󱥌󱤉󱥂󱥩 [󱥂 & 󱤾]
  `(var ,󱥂 ,(unpack 󱤾)))

(fn 󱥌󱤉󱥂󱤈󱥩 [󱥂 & 󱤾]
  `(local ,󱥂 ,(unpack 󱤾)))

(fn 󱥬󱥩󱤴 [󱤌]
  `(print ,󱤌))


{: 󱥌󱤉󱥂󱥩
 : 󱥌󱤉󱥂󱤈󱥩
 : 󱤎
 : 󱤂
 : 󱥁󱤧󱤬󱤡
 : 󱥁󱤧󱤬󱤂󱤬󱤡
 : 󱤊
 : 󱦅
 : 󱤇
 : 󱤬
 : 󱥬󱥩󱤴
 : 󱤽}

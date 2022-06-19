(set-option :produce-models true)
(set-option :opt.priority box)

(declare-const A Bool)
(declare-const B Bool)
(declare-const C Bool)
(declare-const D Bool)
(declare-const E Bool)
(declare-const F Bool)
(declare-const G Bool)

(assert (or A B))
(assert (or B C))
(assert (or C D))
(assert (or C E))
(assert (or D E))
(assert (or E F))
(assert (or D F))
(assert (or D G))

(assert-soft (not A) :weight 1 :id vertex-cover_size)
(assert-soft (not B) :weight 1 :id vertex-cover_size)
(assert-soft (not C) :weight 1 :id vertex-cover_size)
(assert-soft (not D) :weight 1 :id vertex-cover_size)
(assert-soft (not E) :weight 1 :id vertex-cover_size)
(assert-soft (not F) :weight 1 :id vertex-cover_size)
(assert-soft (not G) :weight 1 :id vertex-cover_size)

(minimize vertex-cover_size)

(check-sat)
(get-objectives)
(get-model)
(exit)
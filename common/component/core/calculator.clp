(deftemplate dead
(slot Gender (type INTEGER) (default 0))
(slot Status (type INTEGER) (default 0))
(slot Husband (type INTEGER) (default 0))
(slot Wives (type INTEGER) (default 0))
(slot Sons (type INTEGER) (default 0))
(slot Daughters (type INTEGER) (default 0))
(slot Grandsons (type INTEGER) (default 0))
(slot Granddaughters (type INTEGER) (default 0))
(slot Father (type INTEGER) (default 0))
(slot Mother (type INTEGER) (default 0))
(slot Grandfather (type INTEGER) (default 0))
(slot PaternalGrandmother (type INTEGER) (default 0))
(slot MaternalGrandmother (type INTEGER) (default 0))
(slot FullBrothers (type INTEGER) (default 0))
(slot FullSisters (type INTEGER) (default 0))
(slot PaternalBrothers (type INTEGER) (default 0))
(slot PaternalSisters (type INTEGER) (default 0))
(slot MaternalBrothers (type INTEGER) (default 0))
(slot MaternalSisters (type INTEGER) (default 0))
(slot FullNephews (type INTEGER) (default 0))
(slot PaternalNephews (type INTEGER) (default 0))
(slot FullUncles (type INTEGER) (default 0))
(slot PaternalUncles (type INTEGER) (default 0))
(slot FullCousins (type INTEGER) (default 0))
(slot PaternalCousins (type INTEGER) (default 0))
);

;-----Female-------
;-----Husband------
((defrule rule-1 (dead (Gender 2)(Status 1)(Husband 1)(Wives 0)(Sons 0)(Daughters 0)
(Grandsons 0)(Granddaughters 0)(Father 0)(Mother 0)
(Grandfather 0)(PaternalGrandmother 0)(MaternalGrandmother 0)
(FullBrothers 1)(FullSisters 0)(PaternalBrothers 0)(PaternalSisters 0)
(MaternalBrothers 0)(MaternalSisters 0)(FullNephews 0)(PaternalNephews 0)
(FullUncles 0)(PaternalUncles 0)(FullCousins 0)(PaternalCousins 0))
=>
(printout t "Husband,50" crlf "FullBrothers,50" crlf)
);

;-------
(defrule rule-2 (dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,100" crlf ));
;-------
;-------Husband , Sons ------
 (defrule rule-3(and(dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 )) (test (>= ?x 1)))
 =>
 (printout t "Husband,25" crlf "Sons,75" crlf ));

;-------

;-------Husband - Daughters ----
(defrule rule-4(and(dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?x )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Daughters,75" crlf ));
;-------
;------- Husband , Sons , Daughters -------
(defrule rule-5 (and (dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,50" crlf "Daughters,25" crlf ));
;-----------------------------------------
;-------Husband , Sons , Father ----------
;-----------------------------------------
(defrule rule-6(and (dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Sons,58.33" crlf "Father,16.67" crlf ));
;-----------------------------------------
;-------Husband , Sons , Mother ----------
;-----------------------------------------
(defrule rule-7 (and (dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1)
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Sons,58.33" crlf "Mother,16.67" crlf ));
;-----------------------------------------
;-------Husband , Daughters , Father -----
;-----------------------------------------
(defrule rule-8 (and(dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Daughters,50" crlf "Father,25" crlf ));
;-----------------------------------------
;-------Husband , Daughters , Mother -----
;-----------------------------------------
(defrule rule-9 (and(dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Daughters,56.25" crlf "Mother,18.75" crlf ));

;-----------------------------------------
;-------Husband , Daughters ,Sons, Mother-
;-----------------------------------------
(defrule rule-10(and(dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,38.89" crlf "Daughters,19.44" crlf "Mother,16.67" crlf ));
;-----------------------------------------
;-------Husband , Daughters ,Sons, Father-
;----------------------------------------
(defrule rule-11 (and(dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,38.89" crlf "Daughters,19.44" crlf "Father,16.67" crlf ));

;--------------------------------------------------
;-------Husband , Daughters ,Sons, Father , Mother-
;--------------------------------------------------
(defrule rule-12(and(dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,27.78" crlf "Daughters,13.89" crlf "Father,16.67" crlf "Mother,16.67" crlf ));
;--------------------------------------------------
;-------Husband ,Sons, Father , Mother-
;--------------------------------------------------
(defrule rule-13(and (dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Sons,41.67" crlf "Father,16.67" crlf "Mother,16.67" crlf ));

;--------------------------------------------------
;-------Husband , Daughters , Father , Mother-
;--------------------------------------------------
(defrule rule-14 (and(dead (Gender 2 )(Status 1 )(Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Husband,23.08" crlf "Sons,46.15" crlf "Father,15.38" crlf "Mother,15.38" crlf ));
;-------
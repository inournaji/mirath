(deftemplate dead
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
;-----------------------------------------
;------- Husband -------------------------
;-----------------------------------------
(defrule rule-2 (dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,100" crlf ));
;-----------------------------------------
;------- Husband, Sons -------------------
;-----------------------------------------
 (defrule rule-3(and(dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 )) (test (>= ?x 1)))
 =>
 (printout t "Husband,25" crlf "Sons,75" crlf ));

;-----------------------------------------
;-------Husband, Daughters ---------------
;-----------------------------------------
(defrule rule-4(and(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?x )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Daughters,75" crlf ));
;-----------------------------------------
;------- Husband, Sons, Daughters --------
;-----------------------------------------
(defrule rule-5 (and (dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,50" crlf "Daughters,25" crlf ));
;-----------------------------------------
;-------Husband, Sons, Father ------------
;-----------------------------------------
(defrule rule-6(and (dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Sons,58.33" crlf "Father,16.67" crlf ));
;-----------------------------------------
;-------Husband, Sons, Mother ------------
;-----------------------------------------
(defrule rule-7 (and (dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1)
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Sons,58.33" crlf "Mother,16.67" crlf ));
;-----------------------------------------
;-------Husband, Daughters, Father -------
;-----------------------------------------
(defrule rule-8 (and(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Daughters,50" crlf "Father,25" crlf ));
;-----------------------------------------
;-------Husband, Daughters, Mother -------
;-----------------------------------------
(defrule rule-9 (and(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Daughters,56.25" crlf "Mother,18.75" crlf ));

;-----------------------------------------
;-------Husband, Daughters, Sons, Mother -
;-----------------------------------------
(defrule rule-10(and(dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,38.89" crlf "Daughters,19.44" crlf "Mother,16.67" crlf ));
;-----------------------------------------
;-------Husband, Daughters, Sons, Father -
;-----------------------------------------
(defrule rule-11 (and(dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,38.89" crlf "Daughters,19.44" crlf "Father,16.67" crlf ));

;--------------------------------------------------
;-------Husband, Daughters, Sons, Father, Mother --
;--------------------------------------------------
(defrule rule-12(and(dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,27.78" crlf "Daughters,13.89" crlf "Father,16.67" crlf "Mother,16.67" crlf ));
;--------------------------------------------------
;-------Husband, Sons, Father, Mother -------------
;--------------------------------------------------
(defrule rule-13(and (dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Sons,41.67" crlf "Father,16.67" crlf "Mother,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Husband ,Father -----------------------------------
;-----------------------------------------------------------------
(defrule rule-14(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,50" crlf "Father,50" crlf ));
;-----------------------------------------------------------------
;-------------Father -----------------------------------
;-----------------------------------------------------------------
(defrule rule-15 (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Father,100" crlf ));

;-----------------------------------------------------------------
;------------- mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-16 (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Mother,100" crlf ));
;-----------------------------------------------------------------
;------------- Husband , Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-17(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,50" crlf "Mother,50" crlf ));

;-----------------------------------------------------------------
;------------- Mother ,Father -----------------------------------
;-----------------------------------------------------------------
(defrule rule-18 (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Father,66.67" crlf "Mother,33.33" crlf ));

;-----------------------------------------------------------------
;------------- Husband ,Father  , Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-19 (dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,50" crlf "Father,33.33" crlf "Mother,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Daughter -----------------------------------
;-----------------------------------------------------------------
(defrule rule-20 (and(dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Daughters,100" crlf ));

;-----------------------------------------------------------------
;------------- Daughter ,Father -----------------------------------
;-----------------------------------------------------------------
(defrule rule-21 (and(dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Daughters,50" crlf "Father,50" crlf ));
;-----------------------------------------------------------------
;------------- Daughter ,Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-22 (and(dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Daughters,75" crlf "Mother,25" crlf ));

;-----------------------------------------------------------------
;------------- Daughter ,Father , Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-23 (and (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Daughters,50" crlf "Father,33.33" crlf "Mother,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Son -----------------------------------
;-----------------------------------------------------------------
(defrule rule-24 (dead (Husband 0 )(Wives 0 )(Sons 1 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Sons,100" crlf ));

;-----------------------------------------------------------------
;------------- Son , Father -----------------------------------
;-----------------------------------------------------------------
(defrule rule-25  (and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Sons,83.33" crlf "Father,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Son, Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-26 (and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Sons,83.33" crlf "Mother,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Son ,Mother , Father -----------------------------------
;-----------------------------------------------------------------
(defrule rule-27 (and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Sons,66.67" crlf "Father,16.67" crlf "Mother,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Son , Daughter -----------------------------------
;-----------------------------------------------------------------
(defrule rule-28 (and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Son," (* 100 (/ (* ?x 2) (+ (* ?x 2) ?y))) crlf "Daughter,"(* 100 (/ ?y (+ (* ?x 2) ?y))) crlf));
;--------------------------------------------------
;-------Husband , Daughters , Father , Mother-
;--------------------------------------------------
(defrule rule-29 (and(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Husband,23.08" crlf "Sons,46.15" crlf "Father,15.38" crlf "Mother,15.38" crlf ));
;-----------------------------------------------------------------
;------------- Son , Daughter ,Father -----------------------------------
;-----------------------------------------------------------------
(defrule rule-30 (and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 )) (test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Sons," (* 100 (/ (* 10 ?x) (* 6 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100 (/ (* 5 ?y) (* 6 (+ (* 2 ?x) ?y)))) crlf "Father,16.67" crlf ));
;-----------------------------------------------------------------
;------------- Son , Daughter, Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-31 (and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 )) (test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Sons,"(* 100 (/ (* 10 ?x) (* 6 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100(/ (* 5 ?y) (* 6 (+ (* 2 ?x) ?y)))) crlf "Mother,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Son , Daughter , Father , mother -----------------------------------
;-----------------------------------------------------------------

(defrule rule-32(and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 )) (test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Sons," (* 100(/ (* 8 ?x) (* 6 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100(/ (* 4 ?y) (* 6 (+ (* 2 ?x) ?y)))) crlf "Father,16.67" crlf "Mother,16.67" crlf ));

;-----------------------------------------
;------- Wife -------------------------
;-----------------------------------------
(defrule rule-33 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 => "
(printout t "Wives,100" crlf ));

;-----------------------------------------
;------- Wife, Sons -------------------
;-----------------------------------------
(defrule rule-34(and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons,87.5" crlf ));

;-----------------------------------------
;-------Wife, Daughters ---------------
;-----------------------------------------
(defrule rule-35(and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Wives,12.5" crlf "Daughters,87.5" crlf ));

;-----------------------------------------
;------- Wife, Sons, Daughters --------
;-----------------------------------------
(defrule rule-36 (and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons," (* 100(/ (* 14 ?x) (* 8 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100(/ (* 7 ?y) (* 8 (+ (* 2 ?x) ?y)))) crlf ));

;-----------------------------------------
;-------Wife, Sons, Father ------------
;-----------------------------------------
(defrule rule-37 (and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons,70.83" crlf "Father,16.67" crlf ));

;-----------------------------------------
;-------Wife, Sons, Mother ------------
;-----------------------------------------
(defrule rule-38 (and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons,70.83" crlf "Mother,16.67" crlf ));

;-----------------------------------------
;-------Wife, Daughters, Father -------
;-----------------------------------------
(defrule rule-39 (and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 => "
(printout t "Wives,12.5" crlf "Daughters,50" crlf "Father,37.5" crlf ));
;-----------------------------------------
;-------Wife, Daughters (>2) , Father -------
;-----------------------------------------
(defrule rule-50(and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "Father,20.83" crlf ));

;-------
;-----------------------------------------
;-------Wife, Daughters (1), Mother -------
;-----------------------------------------
(defrule rule-40(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,12.5" crlf "Daughters,65.62" crlf "Mother,21.88" crlf ));

;-----------------------------------------
;-------Wife, Daughters (>2), Mother -------
;-----------------------------------------
(defrule rule-49(and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,70" crlf "Mother,17.5" crlf ));
;-----------------------------------------
;-------Wife, Daughters, Sons, Mother -
;-----------------------------------------
(defrule rule-41 (and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons," (* 100 (/ (* 68 1) (* 48 (+ (* 2 1) 1)))) crlf "Daughters," (* 100 (/ (* 34 1) (* 48 (+ (* 2 1) 1)))) crlf "Mother,16.67" crlf ));

;-----------------------------------------
;-------Wife, Daughters, Sons, Father -
;-----------------------------------------
(defrule rule-42 (and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons," (* 100 (/ (* 68 ?x) (* 48 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100 (/ (* 34 ?y) (* 48 (+ (* 2 ?x) ?y)))) crlf "Father,16.67" crlf ));

;--------------------------------------------------
;-------Wife, Daughters, Sons, Father, Mother --
;--------------------------------------------------
(defrule rule-43 (and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons," (* 100 (/ (* 13 ?x) (* 12 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100 (/ (* 13 ?y) (* 24(+ (* 2 ?x) ?y)))) crlf "Father,16.67" crlf "Mother,16.67" crlf ));

;--------------------------------------------------
;-------Wife, Sons, Father, Mother -------------
;--------------------------------------------------
(defrule rule-44(and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons,54.17" crlf "Father,16.67" crlf "Mother,16.67" crlf ));

;--------------------------------------------------
;-------Wife , Daughters , Father , Mother-
;--------------------------------------------------
(defrule rule-45 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "Father,20.83" crlf "Mother,16.67" crlf ));

;--------------------------------------------------
;-------Wife , Daughters (> 2), Father , Mother-
;--------------------------------------------------
(defrule rule-51 (and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,59.26" crlf "Father,14.81" crlf "Mother,14.81" crlf ));

;-----------------------------------------------------------------
;------------- Wife ,Father -----------------------------------
;-----------------------------------------------------------------
(defrule rule-46 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,25" crlf "Father,75" crlf ));

;-----------------------------------------------------------------
;------------- Wife , Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-47 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,25" crlf "Mother,75" crlf ));

;-----------------------------------------------------------------
;------------- Wife ,Father  , Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-48 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 1 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,25" crlf "Father,50" crlf "Mother,25" crlf ));
;-------- FBro --------------------------------------
(defrule rule-52(and(dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "FullBrothers,100" crlf ));
;--------- FBro , Husband --------------------------------------------------------
(defrule rule-53 (and(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,50" crlf "FullBrothers,50" crlf ));
;----------- FBro , Mother ------------------------------------------------------
(defrule rule-54(dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 1 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Mother,33.33" crlf "FullBrothers,66.67" crlf ));

;----------- FBro () , Mother ------------------------------------------------------
(defrule rule-215 (and(dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 2)))
 =>
(printout t "Mother,16.67" crlf "FullBrothers,83.33" crlf ));

;------------- FBro , Mother , Husband ----------------------------------------
(defrule rule-55(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 1 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,50" crlf "Mother,33.33" crlf "FullBrothers,16.67" crlf ));

;------------- FBro () , Mother , Husband ----------------------------------------
(defrule rule-60 (and(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 2)))
 =>
(printout t "Husband,50" crlf "Mother,16.67" crlf "FullBrothers,33.33" crlf ));

;--------------- FBro, Daughter --------------------------------------------------
(defrule rule-56 ( and (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Daughters,50" crlf "FullBrothers,50" crlf ));

;------------- FBro , Daughter , Husband ----------------------------------------------------
(defrule rule-57( and (dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Daughters,50" crlf "FullBrothers,25" crlf ));

;-------------- FBro ,Daughter , Mother ---------------------------------------------------
(defrule rule-58( and (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Daughters,50" crlf "Mother,16.67" crlf "FullBrothers,33.33" crlf ));

;-------------- FBro , Daughter , Mother , Husband---------------------------------------------------
(defrule rule-59( and (dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Daughters,50" crlf "Mother,16.67" crlf "FullBrothers,8.33" crlf ));

;--------------FBro ,Daughter(2) , Mother ---------------------------------------------------
(defrule rule-61( and (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 2)))
 =>
(printout t "Daughters,66.67" crlf "Mother,16.67" crlf "FullBrothers,16.67" crlf ));

;--------------FBro , Daughter(2) , Husband ---------------------------------------------------
(defrule rule-62( and (dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 2)))
 =>
(printout t "Husband,25" crlf "Daughters,66.67" crlf "FullBrothers,8.33" crlf ));

;---------------FBro, Daughter(2)--------------------------------------------------
(defrule rule-63  ( and (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)) (test (>= ?y 2)))
 =>
(printout t "Daughters,66.67" crlf "FullBrothers,33.33" crlf ));
;--------- FBro , Wife --------------------------------------------------------
(defrule rule-88( and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,25" crlf "FullBrothers,75" crlf ));

;------------- FBro , Mother , Wife ----------------------------------------
(defrule rule-89( and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x)
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,25" crlf "Mother,16.67" crlf "FullBrothers,58.33" crlf ));

;------------- FBro , Daughter , Wife ----------------------------------------------------
(defrule rule-90( and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "FullBrothers,37.5" crlf ));

;-------------- FBro , Daughter , Mother , Wife---------------------------------------------------
(defrule rule-91( and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "Mother,16.67" crlf "FullBrothers,20.83" crlf ));

;-------------- FBro , Daughter(2) , Mother , Wife---------------------------------------------------
(defrule rule-92( and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "Mother,16.67" crlf "FullBrothers,4.17" crlf ));

;--------------FBro , Daughter(2) , Wife ---------------------------------------------------
(defrule rule-93( and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "FullBrothers,20.83" crlf ));

;---------------- FSis ,  -------------------------------------------------
(defrule rule-64( and (dead  (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1)))
 =>
(printout t "FullSisters,100" crlf ));

;--------------- FSis , Husband--------------------------------------------------
(defrule rule-65 (dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,50" crlf "FullSisters,50" crlf ));

;--------------- FSis () , Husband--------------------------------------------------
(defrule rule-216 ( and (dead  (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 2)))
 =>
(printout t "Husband,42.86" crlf "FullSisters,57.14" crlf ));

;----------------FSis , Mother ------------------------------------------------
(defrule rule-66 ( and (dead  (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1)))
 =>
(printout t "Mother,20" crlf "FullSisters,80" crlf ));
;---------------- FSis , Daughter-------------------------------------------------
(defrule rule-67 ( and (dead  (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1)))
 =>
(printout t "Daughters,50" crlf "FullSisters,50" crlf ));

;----------------- FSis , Daughter(2) ------------------------------------------------
(defrule rule-68 ( and (dead  (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?x )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1))(test (>= ?x 2)))
 =>
(printout t "Daughters,66.67" crlf "FullSisters,33.33" crlf ));

;------------------FSis , Husband , Mother-----------------------------------------------
(defrule rule-69 (dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,37.5" crlf "Mother,25" crlf "FullSisters,37.5" crlf ));

;------------------FSis () , Husband , Mother-----------------------------------------------
(defrule rule-73 ( and (dead  (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 2)))
 =>
(printout t "Husband,37.5" crlf "Mother,12.5" crlf "FullSisters,50" crlf ));

;----------------- FSis , Husband , Daughter------------------------------------------------
(defrule rule-70 ( and (dead  (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1)))
 =>

(printout t "Husband,25" crlf "Daughters,50" crlf "FullSisters,25" crlf ));

;----------------- FSis , Husband , Daughter (2)------------------------------------------------
(defrule rule-71 ( and (dead  (Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?x )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1))(test (>= ?x 2)))
 =>
(printout t "Husband,25" crlf "Daughters,66.67" crlf "FullSisters,8.33" crlf ));

;------------------FSis , Husband , Mother , Daughter-----------------------------------------------
(defrule rule-72 ( and (dead  (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1)))
 =>
(printout t "Husband,25" crlf "Daughters,50" crlf "Mother,16.67" crlf "FullSisters,8.33" crlf ));

;------------------FSis , Mother , Daughter-----------------------------------------------
(defrule rule-74 ( and (dead  (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 1)
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1)))
 =>
(printout t "Daughters,50" crlf "Mother,16.67" crlf "FullSisters,33.33" crlf ));

;------------------ FSis , Mother , Daughter (2)-----------------------------------------------
(defrule rule-75 (and (dead  (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?x )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1))(test (>= ?x 2)))
 =>
(printout t "Daughters,66.67" crlf "Mother,16.67" crlf "FullSisters,16.67" crlf ));


;--------------- FSis , Wife--------------------------------------------------
(defrule rule-94 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 1)))
 =>
(printout t "Wives,25" crlf "FullSisters,75" crlf ));

;------------------FSis , Wife , Mother----------------------------------------

(defrule rule-217(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,23.08" crlf "Mother,30.77" crlf "FullSisters,46.15" crlf ));

;------------------FSis(2) , Wife , Mother-----------------------------------------------

(defrule rule-95 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters ?z )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?z 2)))
 =>
(printout t "Wives,23.08" crlf "Mother,15.38" crlf "FullSisters,61.54" crlf ));

;----------------- FSis , Wife , Daughter------------------------------------------------
(defrule rule-96  (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "FullSisters,37.5" crlf ));





;----------------- FSis , Wife , Daughter (2)------------------------------------------------
(defrule rule-97 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "FullSisters,20.83" crlf ));

;------------------FSis , Wife , Mother , Daughter-----------------------------------------------
(defrule rule-98 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "Mother,16.67" crlf "FullSisters,20.83" crlf ));

;------------------FSis , Wife , Mother , Daughter(2)-----------------------------------------------
(defrule rule-99 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "Mother,16.67" crlf "FullSisters,4.17" crlf ));

;--------------- FSis , Wife , FBro--------------------------------------------------
(defrule rule-100 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 1 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,25" crlf "FullBrothers,50" crlf "FullSisters,25" crlf ));
;--------------- FSis () , Wife , FBro ()--------------------------------------------------
(defrule rule-218 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters ?y )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Wives,25" crlf "FullBrothers,"(* 100 (/ (* 6 ?x) (* 4 (+ (* 2 ?x) ?y)))) crlf "FullSisters," (* 100(/ (* 3 ?y) (* 4 (+ (* 2 ?x) ?y)))) crlf ));


;------------------FSis , Wife , Mother, FBro-----------------------------------------------
(defrule rule-101 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 1 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,25" crlf "Mother,16.67" crlf "FullBrothers,38.89" crlf "FullSisters,19.44" crlf ));

;------------------FSis (), Wife , Mother, FBro ()-----------------------------------------------
(defrule rule-219 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters ?y )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Wives,25" crlf "Mother,16.67" crlf "FullBrothers,"(* 100 (/ (* 14 ?x) (* 12 (+ (* 2 ?x) ?y)))) crlf "FullSisters," (* 100(/ (* 7 ?y) (* 12 (+ (* 2 ?x) ?y)))) crlf ));

;----------------- FSis , Wife , Daughter, FBro------------------------------------------------
(defrule rule-102 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 1 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "FullBrothers,25" crlf "FullSisters,12.5" crlf ));


;----------------- FSis (), Wife , Daughter, FBro () ------------------------------------------------
(defrule rule-223 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters ?y )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "FullBrothers,"(* 100 (/ (* 18 ?x) (* 24 (+ (* 2 ?x) ?y)))) crlf "FullSisters," (* 100(/ (* 9 ?y) (* 24 (+ (* 2 ?x) ?y)))) crlf ));

;----------------- FSis , Wife , Daughter (2), FBro------------------------------------------------
(defrule rule-103 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 1 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "FullBrothers,13.89" crlf "FullSisters,6.94" crlf ));

;----------------- FSis () , Wife , Daughter (2), FBro ()------------------------------------------------
(defrule rule-221 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?z )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 0 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters ?y )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1))(test (>= ?z 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "FullBrothers,"(* 100 (/ (* 20 ?x) (* 48 (+ (* 2 ?x) ?y)))) crlf "FullSisters," (* 100(/ (* 10 ?y) (* 48 (+ (* 2 ?x) ?y)))) crlf ));

;------------------FSis , Wife , Mother , Daughter, FBro-----------------------------------------------
(defrule rule-104  (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters ?y )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "Mother,16.67" crlf "FullBrothers,13.89" crlf "FullSisters,6.94" crlf ));
;------------------FSis() , Wife , Mother , Daughter, FBro()-----------------------------------------------
(defrule rule-222  (and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters ?y )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "Mother,16.67" crlf "FullBrothers,"(* 100 (/ (* 10 ?x) (* 24 (+ (* 2 ?x) ?y)))) crlf "FullSisters," (* 100(/ (* 5 ?y) (* 24 (+ (* 2 ?x) ?y)))) crlf ));

;------------------FSis , Wife , Mother , Daughter(2), FBro-----------------------------------------------
(defrule rule-105 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 1 )
(FullSisters 1 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "Mother,16.67" crlf "FullBrothers,2.78" crlf "FullSisters,1.39" crlf ));

;------------------FSis () , Wife , Mother , Daughter(2), FBro () -----------------------------------------------
(defrule rule-220 (and (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?z )
(Grandsons 0 )(Granddaughters 0 )(Father 0 )(Mother 1 )
(Grandfather 0 )(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers ?x )
(FullSisters ?y )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1))(test (>= ?z 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "Mother,16.67" crlf "FullBrothers,"(* 100 (/ (* 2 ?x) (* 24 (+ (* 2 ?x) ?y)))) crlf "FullSisters," (* 100(/ (* 1 ?y) (* 24 (+ (* 2 ?x) ?y)))) crlf ));

;-----Fe;-----------------------------------------
;-------Husband, Sons, Grandfather ------------
;-----------------------------------------
(defrule rule-306(and (dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Sons,58.33" crlf "Grandfather,16.67" crlf ));
;-----------------------------------------
;-----------------------------------------
;-------Husband, Daughters, Grandfather -------
;-----------------------------------------
(defrule rule-308 (and(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Daughters,50" crlf "Grandfather,25" crlf ));
;-----------------------------------------

;-------Husband, Daughters, Sons, Grandfather -
;-----------------------------------------
(defrule rule-311 (and(dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,38.89" crlf "Daughters,19.44" crlf "Grandfather,16.67" crlf ));

;--------------------------------------------------
;-------Husband, Daughters, Sons, Grandfather, Mother --
;--------------------------------------------------
(defrule rule-312(and(dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1))(test (>= ?y 1)))
 =>
(printout t "Husband,25" crlf "Sons,27.78" crlf "Daughters,13.89" crlf "Grandfather,16.67" crlf "Mother,16.67" crlf ));
;--------------------------------------------------
;-------Husband, Sons, Grandfather, Mother -------------
;--------------------------------------------------
(defrule rule-3013(and (dead (Husband 1 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Husband,25" crlf "Sons,41.67" crlf "Grandfather,16.67" crlf "Mother,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Husband ,Grandfather -----------------------------------
;-----------------------------------------------------------------
(defrule rule-314(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,50" crlf "Grandfather,50" crlf ));
;-----------------------------------------------------------------
;-------------Grandfather -----------------------------------
;-----------------------------------------------------------------
(defrule rule-315 (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Grandfather,100" crlf ));


;-----------------------------------------------------------------
;------------- Mother ,Grandfather -----------------------------------
;-----------------------------------------------------------------
(defrule rule-318 (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Grandfather,66.67" crlf "Mother,33.33" crlf ));

;-----------------------------------------------------------------
;------------- Husband ,Grandfather  , Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-319 (dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Husband,50" crlf "Grandfather,33.33" crlf "Mother,16.67" crlf ));


;-----------------------------------------------------------------
;------------- Daughter ,Grandfather -----------------------------------
;-----------------------------------------------------------------
(defrule rule-321 (and(dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Daughters,50" crlf "Grandfather,50" crlf ));
;-----------------------------------------------------------------

;-----------------------------------------------------------------
;------------- Daughter ,Grandfather , Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-323 (and (dead (Husband 0 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Daughters,50" crlf "Grandfather,33.33" crlf "Mother,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Son , Grandfather -----------------------------------
;-----------------------------------------------------------------
(defrule rule-325  (and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Sons,83.33" crlf "Grandfather,16.67" crlf ));

;--------------------------------------------------
;-------Husband , Daughters , Grandfather , Mother-
;--------------------------------------------------
(defrule rule-329 (and(dead (Husband 1 )(Wives 0 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Husband,23.08" crlf "Sons,46.15" crlf "Grandfather,15.38" crlf "Mother,15.38" crlf ));
;-----------------------------------------------------------------
;------------- Son , Daughter ,Grandfather -----------------------------------
;-----------------------------------------------------------------
(defrule rule-330 (and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 )) (test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Sons," (* 100 (/ (* 10 ?x) (* 6 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100 (/ (* 5 ?y) (* 6 (+ (* 2 ?x) ?y)))) crlf "Grandfather,16.67" crlf ));

;-----------------------------------------------------------------
;------------- Son , Daughter , Grandfather , mother -----------------------------------
;-----------------------------------------------------------------

(defrule rule-332(and(dead (Husband 0 )(Wives 0 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 )) (test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Sons," (* 100(/ (* 8 ?x) (* 6 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100(/ (* 4 ?y) (* 6 (+ (* 2 ?x) ?y)))) crlf "Grandfather,16.67" crlf "Mother,16.67" crlf ));


;-----------------------------------------
;-------Wife, Sons, Grandfather ------------
;-----------------------------------------
(defrule rule-337 (and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons,70.83" crlf "Grandfather,16.67" crlf ));

;-----------------------------------------
;-------Wife, Daughters, Grandfather -------
;-----------------------------------------
(defrule rule-339 (and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "Grandfather,37.5" crlf ));
;-----------------------------------------
;-------Wife, Daughters (>2) , Grandfather -------
;-----------------------------------------
(defrule rule-350(and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1)))
 =>
(printout t "Wives,12.5" crlf "Daughters,66.67" crlf "Grandfather,20.83" crlf ));


;-----------------------------------------
;-------Wife, Daughters, Sons, Grandfather -
;-----------------------------------------
(defrule rule-342 (and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons," (* 100 (/ (* 68 ?x) (* 48 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100 (/ (* 34 ?y) (* 48 (+ (* 2 ?x) ?y)))) crlf "Grandfather,16.67" crlf ));

;--------------------------------------------------
;-------Wife, Daughters, Sons, Grandfather, Mother --
;--------------------------------------------------
(defrule rule-343 (and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 1))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons," (* 100 (/ (* 13 ?x) (* 12 (+ (* 2 ?x) ?y)))) crlf "Daughters," (* 100 (/ (* 13 ?y) (* 24(+ (* 2 ?x) ?y)))) crlf "Grandfather,16.67" crlf "Mother,16.67" crlf ));

;--------------------------------------------------
;-------Wife, Sons, Grandfather, Mother -------------
;--------------------------------------------------
(defrule rule-344(and(dead (Husband 0 )(Wives 1 )(Sons ?x )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?x 1)))
 =>
(printout t "Wives,12.5" crlf "Sons,54.17" crlf "Grandfather,16.67" crlf "Mother,16.67" crlf ));

;--------------------------------------------------
;-------Wife , Daughters , Grandfather , Mother-
;--------------------------------------------------
(defrule rule-345 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 1 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,12.5" crlf "Daughters,50" crlf "Grandfather,20.83" crlf "Mother,16.67" crlf ));

;--------------------------------------------------
;-------Wife , Daughters (> 2), Grandfather , Mother-
;--------------------------------------------------
(defrule rule-351 (and(dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters ?y )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))(test (>= ?y 2)))
 =>
(printout t "Wives,12.5" crlf "Daughters,59.26" crlf "Grandfather,14.81" crlf "Mother,14.81" crlf ));

;-----------------------------------------------------------------
;------------- Wife ,Grandfather -----------------------------------
;-----------------------------------------------------------------
(defrule rule-346 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 0 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,25" crlf "Grandfather,75" crlf ));

;-----------------------------------------------------------------
;------------- Wife , Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-347 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 0 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,25" crlf "Mother,75" crlf ));

;-----------------------------------------------------------------
;------------- Wife ,Grandfather  , Mother -----------------------------------
;-----------------------------------------------------------------
(defrule rule-348 (dead (Husband 0 )(Wives 1 )(Sons 0 )(Daughters 0 )
(Grandsons 0 )(Granddaughters 0 )(Grandfather 1 )(Mother 1 )
(Father 0)(PaternalGrandmother 0 )(MaternalGrandmother 0 )(FullBrothers 0 )
(FullSisters 0 )(PaternalBrothers 0 )(PaternalSisters 0 )(MaternalBrothers 0 )
(MaternalSisters 0 )(FullNephews 0 )(PaternalNephews 0 )(FullUncles 0 )
(PaternalUncles 0 )(FullCousins 0 )(PaternalCousins 0 ))
 =>
(printout t "Wives,25" crlf "Grandfather,50" crlf "Mother,25" crlf ));
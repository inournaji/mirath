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

;---
(defrule rule-1 (dead (Gender 2)(Status 1)(Husband 1)(Wives 0)(Sons 0)(Daughters 0)(Grandsons 0)(Granddaughters 0)(Father 0)
(Mother 0)(Grandfather 0)(PaternalGrandmother 0)(MaternalGrandmother 0)(FullBrothers 1)(FullSisters 0)(PaternalBrothers 0)
(PaternalSisters 0)(MaternalBrothers 0)(MaternalSisters 0)(FullNephews 0)(PaternalNephews 0)(FullUncles 0)(PaternalUncles 0)
(FullCousins 0)(PaternalCousins 0))
=>
(printout t "Husband,50" crlf "FullBrothers,50" crlf)
);

;---
(defrule rule-2 (dead (Gender 2)(Status 1)(Husband 1)(Wives 0)(Sons 1)(Daughters 0)(Grandsons 0)(Granddaughters 0)(Father 0)
(Mother 0)(Grandfather 0)(PaternalGrandmother 0)(MaternalGrandmother 0)(FullBrothers 0)(FullSisters 0)(PaternalBrothers 0)
(PaternalSisters 0)(MaternalBrothers 0)(MaternalSisters 0)(FullNephews 0)(PaternalNephews 0)(FullUncles 0)(PaternalUncles 0)
(FullCousins 0)(PaternalCousins 0))
=>
(printout t "Husband,50" crlf "Son,50" crlf)
);

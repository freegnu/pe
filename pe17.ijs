ones =: 90*#'onetwothreefourfivesixseveneightnine'
teens =: 10*#'eleventwelvethirteenfourteenfifteensixteenseventeeneighteennineteen'
ot =: #'onethousand'
tens =: 100*#'twentythirtyfourtyfiftysixtyseventyeightyninety'
huns =: (10*ones)+900*#'hundred'
ones+teens+ot+tens+huns

[top]
components : roundabout

[roundabout]
type : cell
dim : (16,16)
delay : transport
defaultDelayTime : 100
border : nowrapped
neighbors : roundabout(-2,0) roundabout(-2,1)
neighbors : roundabout(-1,-2) roundabout(-1,-1) roundabout(-1,0) roundabout(-1,1)
neighbors : roundabout(0,-2) roundabout(0,-1) roundabout(0,0) roundabout(0,1) roundabout(0,2)
neighbors : roundabout(1,-1) roundabout(1,0) roundabout(1,1) roundabout(1,2)
neighbors : roundabout(2,-1) roundabout(2,0)

initialvalue : 0
initialrowvalue : 0 2222222002222222
initialrowvalue : 1 2222222002222222
initialrowvalue : 2 2222222112222222
initialrowvalue : 3 2222222002222222
initialrowvalue : 4 2222222102222222
initialrowvalue : 5 2222222002222222
initialrowvalue : 6 2222220000222222
initialrowvalue : 7 0010001220010001
initialrowvalue : 8 0010000220000100
initialrowvalue : 9 2222220000222222
initialrowvalue : 10 2222222002222222
initialrowvalue : 11 2222222002222222
initialrowvalue : 12 2222222002222222
initialrowvalue : 13 2222222102222222
initialrowvalue : 14 2222222002222222
initialrowvalue : 15 2222222012222222


localtransition : roundabout-rule

zone : R-lane-to-roundabout-rule { (7,10)..(7,14) }
zone : R-lane-from-roundabout-rule { (8,10)..(8,15) }
zone : U-lane-to-roundabout-rule { (1,7)..(5,7) }
zone : U-lane-from-roundabout-rule { (0,8)..(5,8) }
zone : L-lane-to-roundabout-rule { (8,1)..(8,5) }
zone : L-lane-from-roundabout-rule { (7,0)..(7,5) }
zone : D-lane-to-roundabout-rule { (10,8)..(14,8) }
zone : D-lane-from-roundabout-rule { (10,7)..(15,7) }
zone : EU-inside-roundabout-rule { (7,9) }
zone : NE-inside-roundabout-rule { (6,9) }
zone : NR-inside-roundabout-rule { (6,8) }
zone : NL-inside-roundabout-rule { (6,7) }
zone : NW-inside-roundabout-rule { (6,6) }
zone : WU-inside-roundabout-rule { (7,6) }
zone : WD-inside-roundabout-rule { (8,6) }
zone : SW-inside-roundabout-rule { (9,6) }
zone : SL-inside-roundabout-rule { (9,7) }
zone : SR-inside-roundabout-rule { (9,8) }
zone : SE-inside-roundabout-rule { (9,9) }
zone : ED-inside-roundabout-rule { (8,9) }
zone : gen-cars-in-R-lane-to-roundabout-rule { (7,15) }
zone : gen-cars-in-U-lane-to-roundabout-rule { (0,7) }
zone : gen-cars-in-L-lane-to-roundabout-rule { (8,0) }
zone : gen-cars-in-D-lane-to-roundabout-rule { (15,8) }

[roundabout-rule]
rule : 2 100 { (0,0) = 2 }
rule : 0 100 { t }
[R-lane-to-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 and (-1,-1) = 2 }
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 and (-1,-1) !=2 and (1,-1) = 0 and (2,-1) = 0 }
rule : 1 100 { (0,0) = 0 and (0,1) = 1 }
rule : 1 100 { (0,0) = 1 and (0,-1) = 1 }
rule : 1 100 { (0,0) = 1 and (1,-1) = 1 }
rule : 1 100 { (0,0) = 1 and (2,-1) = 1 }
rule : 0 100 { t }
[R-lane-from-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,1) = 0 }
rule : 1 100 { (0,0) = 0 and (0,-1) = 1 and (1,-1) = 2 }
rule : 1 100 { (0,0) = 0 and (0,-1) = 1 and (1,-1) != 2 and ( random > 0.5 ) }
rule : 0 100 { t }
[U-lane-to-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (1,0) = 0 and (1,-1) = 2 }
rule : 0 100 { (0,0) = 1 and (1,0) = 0 and (1,-1) != 2 and (1,1) = 0 and (1,2) = 0 }
rule : 1 100 { (0,0) = 0 and (-1,0) = 1 }
rule : 1 100 { (0,0) = 1 and (1,0) = 1 }
rule : 1 100 { (0,0) = 1 and (1,1) = 1 }
rule : 1 100 { (0,0) = 1 and (1,2) = 1 }
rule : 0 100 { t }
[U-lane-from-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (-1,0) = 0 }
rule : 1 100 { (0,0) = 0 and (1,0) = 1 and (1,1) = 2 }
rule : 1 100 { (0,0) = 0 and (1,0) = 1 and (1,1) != 2 and ( random > 0.5 ) }
rule : 0 100 { t }
[L-lane-to-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,1) = 0 and (1,1) = 2 }
rule : 0 100 { (0,0) = 1 and (0,1) = 0 and (1,1) != 2 and (-1,1) = 0 and (-2,1) = 0 }
rule : 1 100 { (0,0) = 0 and (0,-1) = 1 }
rule : 1 100 { (0,0) = 1 and (0,1) = 1 }
rule : 1 100 { (0,0) = 1 and (-1,1) = 1 }
rule : 1 100 { (0,0) = 1 and (-2,1) = 1 }
rule : 0 100 { t }
[L-lane-from-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 }
rule : 1 100 { (0,0) = 0 and (0,1) = 1 and (-1,1) = 2 }
rule : 1 100 { (0,0) = 0 and (0,1) = 1 and (-1,1) != 2 and ( random > 0.5 ) }
rule : 0 100 { t }
[D-lane-to-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (-1,0) = 0 and (-1,1) = 2 }
rule : 0 100 { (0,0) = 1 and (-1,0) = 0 and (-1,1) != 2 and (-1,-1) = 0 and (-1,-2) = 0 }
rule : 1 100 { (0,0) = 0 and (1,0) = 1 }
rule : 1 100 { (0,0) = 1 and (-1,0) = 1 }
rule : 1 100 { (0,0) = 1 and (-1,-1) = 1 }
rule : 1 100 { (0,0) = 1 and (-1,-2) = 1 }
rule : 0 100 { t }
[D-lane-from-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (1,0) = 0 }
rule : 1 100 { (0,0) = 0 and (-1,0) = 1 and (-1,-1) = 2 }
rule : 1 100 { (0,0) = 0 and (-1,0) = 1 and (-1,-1) != 2 and ( random > 0.5 ) }
rule : 0 100 { t }
[EU-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (-1,0) = 0 }
rule : 0 100 { (1,0) != 1 and (0,0) = 0 and (0,1) = 1 and (2,0) = 1 }
rule : 1 100 { (1,0) = 1 and (0,0) = 0 and ( random <= 0.5 ) }
rule : 1 100 { (1,0) != 1 and (0,0) = 0 and (0,1) = 1 }
rule : 0 100 { t }
[NE-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (-1,0) = 0 }
rule : 1 100 { (1,0) = 1 and (0,0) = 0 }
rule : 0 100 { t }
[NR-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 }
rule : 1 100 { (0,1) = 1 and (0,0) = 0 }
rule : 0 100 { t }
[NL-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 }
rule : 0 100 { (0,1) != 1 and (0,0) = 0 and (-1,0) = 1 and (0,2) = 1 }
rule : 1 100 { (0,1) = 1 and (0,0) = 0 and ( random <= 0.5 ) }
rule : 1 100 { (0,1) != 1 and (0,0) = 0 and (-1,0) = 1 }
rule : 0 100 { t }
[NW-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 }
rule : 1 100 { (0,1) = 1 and (0,0) = 0 }
rule : 0 100 { t }
[WU-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (1,0) = 0 }
rule : 1 100 { (-1,0) = 1 and (0,0) = 0 }
rule : 0 100 { t }
[WD-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (1,0) = 0 }
rule : 0 100 { (-1,0) != 1 and (0,0) = 0 and (0,-1) = 1 and (-2,0) = 1 }
rule : 1 100 { (-1,0) = 1 and (0,0) = 0 and ( random <= 0.5 ) }
rule : 1 100 { (-1,0) != 1 and (0,0) = 0 and (0,-1) = 1 }
rule : 0 100 { t }
[SW-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (1,0) = 0 }
rule : 1 100 { (-1,0) = 1 and (0,0) = 0 }
rule : 0 100 { t }
[SL-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,1) = 0 }
rule : 1 100 { (0,-1) = 1 and (0,0) = 0 }
rule : 0 100 { t }
[SR-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,1) = 0 }
rule : 0 100 { (0,-1) != 1 and (0,0) = 0 and (1,0) = 1 and (0,-2) = 1 }
rule : 1 100 { (0,-1) = 1 and (0,0) = 0 and ( random <= 0.5 ) }
rule : 1 100 { (0,-1) != 1 and (0,0) = 0 and (1,0) = 1 }
rule : 0 100 { t }
[SE-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,1) = 0 }
rule : 1 100 { (0,-1) = 1 and (0,0) = 0 }
rule : 0 100 { t }
[ED-inside-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (-1,0) = 0 }
rule : 1 100 { (1,0) = 1 and (0,0) = 0 }
rule : 0 100 { t }
###################################Cars-Generator##############
[gen-cars-in-R-lane-to-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,-1) = 0 }
rule : 1 100 { (0,0) = 0 and (0,-1) = 0 and ( random <= 0.5 ) }
rule : 0 100 { t }
[gen-cars-in-U-lane-to-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (1,0) = 0 }
rule : 1 100 { (0,0) = 0 and (1,0) = 0 and ( random <= 0.4 ) }
rule : 0 100 { t }
[gen-cars-in-L-lane-to-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (0,1) = 0 }
rule : 1 100 { (0,0) = 0 and (0,1) = 0 and ( random <= 0.4 ) }
rule : 0 100 { t }
[gen-cars-in-D-lane-to-roundabout-rule]
rule : 0 100 { (0,0) = 1 and (-1,0) = 0 }
rule : 1 100 { (0,0) = 0 and (-1,0) = 0 and ( random <= 0.3 ) }
rule : 0 100 { t }
#lang at-exp racket

(require ice-particles
	 codespells/lore)

(define-rune-collection-lore 
  #:name "Illusions of Ice"
  #:description 
  @md{
    This is the @b{Illusions of Ice} Rune Collection.
  }
  #:rune-lores
  (list
    (rune-lore
     #:name        "Ice Storm"
     #:rune        (ice-storm-rune)
     #:description "" 
     )
    (rune-lore
     #:name        "Ice Ball Rune"
     #:rune        (ice-ball-rune)
     #:description "" 
     )
    (rune-lore
     #:name        "Ice Ball Hit Rune"
     #:rune        (ice-ball-hit-rune)
     #:description "" 
     )
    (rune-lore
     #:name        "Ice Aura Rune"
     #:rune        (ice-aura-rune)
     #:description "" 
     )
    )
  #:preview-image (ice-storm-rune)
  )



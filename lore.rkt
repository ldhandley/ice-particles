#lang at-exp racket

(require ice-particles/main
	 website-js)

(provide name
         description
         runes
         preview-image
         )

(define (name)
  "Illusions of Ice"
  )

(define (description)
  @md{
    This is the @b{Illusions of Ice} Rune Collection.
  })

(define (runes)
  (list
    (list
     "Ice Storm"
     (ice-storm-rune)
     "" 
     )
    (list
     "Ice Ball Rune"
     (ice-ball-rune)
     "" 
     )
    (list
     "Ice Ball Hit Rune"
     (ice-ball-hit-rune)
     "" 
     )
    (list
     "Ice Aura Rune"
     (ice-aura-rune)
     "" 
     )
    )
  )

(define (preview-image)
  (ice-storm-rune)
  )

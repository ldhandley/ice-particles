#lang at-exp racket

(require ice-particles
	 codespells/lore)

(define-rune-collection-lore 
  #:name "Illusions of Ice"
  #:description 
  @md{
  The @b{Illusions of Ice} Rune Collection was crafted by @b{The Snow Mages} of Kafdor. The Runes have been passed down from generation to generation and play a key role in coming of age ceremonies in this culture.

  I, @b{Lindsey the Arch Wizard Scientist}, have been studying Kafdor culture for several years and documenting their Runes. I will document new Runes as they come to light.
  }
  #:rune-lores
  (list
    (rune-lore
      #:name        "Ice Storm"
      #:rune        (ice-storm-rune)
      #:description "This rune create a tornado of ice." 
      )
    (rune-lore
      #:name        "Ice Ball Rune"
      #:rune        (ice-ball-rune)
      #:description "This rune creates a ball of ice magic." 
      )
    (rune-lore
      #:name        "Ice Ball Hit Rune"
      #:rune        (ice-ball-hit-rune)
      #:description "This rune create an explosion of ice magic, which lasts only briefly." 
      )
    (rune-lore
      #:name        "Ice Aura Rune"
      #:rune        (ice-aura-rune)
      #:description "This rune create an magical aura of ice." 
      )
    )
  #:preview-image (ice-storm-rune)
  )



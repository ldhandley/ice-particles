#lang at-exp racket

(require ice-particles
	 codespells/lore)

(define-runtime-path preview-image
                     "images/preview.png")


(define-rune-collection-lore 
  #:name "Illusions of Ice"
  #:description 
  @md{
  The @b{Illusions of Ice} Rune Collection was crafted by @b{The Snow Mages of Kafdor.} The Runes have been passed down from generation to generation and play a key role in coming of age ceremonies in this culture.

  I, @b{Lindsey the Arch Wizard Scientist}, have been studying Kafdor culture for several years and documenting their Runes. I will document new Runes as they come to light.
  }
  #:rune-lores

  ;call it path:ice-storm-demo.mp4 ??
  (list
    (rune-lore
      #:name        "Ice Storm"
      #:rune        (ice-storm-rune)
      #:description @md{

      @(rune-code-example 
	 (my-mod-lang #:with-paren-runes? #t)
	 (ice-storm)
	 ice-storm-demo.mp4
	)

      }
      )
    (rune-lore
      #:name        "Ice Ball Rune"
      #:rune        (ice-ball-rune)
      #:description 
      @md{This rune creates a ball of ice magic.

      @(rune-code-example 
	 (my-mod-lang #:with-paren-runes? #t)
	 (ice-ball)
	 ice-ball-demo.mp4)
      })
    (rune-lore
      #:name        "Ice Ball Hit Rune"
      #:rune        (ice-ball-hit-rune)
      #:description @md{
      This rune create an explosion of ice magic, which lasts only briefly.

      @(rune-code-example 
	 (my-mod-lang #:with-paren-runes? #t)
	 (ice-ball-hit)
	 ice-ball-hit-demo.mp4)
      }
      )
    (rune-lore
      #:name        "Ice Aura Rune"
      #:rune        (ice-aura-rune)
      #:description @md{
      This rune create an magical aura of ice.

      @(rune-code-example 
	 (my-mod-lang #:with-paren-runes? #t)
	 (ice-aura)
	 ice-aura-demo.mp4)
      }
      )
    )
  #:preview-image preview-image
  )



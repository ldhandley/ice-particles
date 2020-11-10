#lang codespells

(require ice-particles/mod-info)
(require 2htdp/image)

(define-classic-rune (ice-storm)
  #:background "blue"
  #:foreground (circle 40 'solid 'green)
  (spawn-mod-blueprint pak-folder mod-name "IceStorm"))

(define-classic-rune (ice-ball)
  #:background "blue"
  #:foreground (circle 40 'solid 'red)
  (spawn-mod-blueprint pak-folder mod-name "IceBall"))

(define-classic-rune (ice-ball-hit)
  #:background "blue"
  #:foreground (circle 40 'solid 'yellow)
  (spawn-mod-blueprint pak-folder mod-name "IceBallHit"))

(define-classic-rune (ice-aura)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (spawn-mod-blueprint pak-folder mod-name "IceAura"))

(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (ice-storm ice-ball ice-ball-hit ice-aura)
  )

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".." ".."))
  
  (once-upon-a-time
   #:world (voxel-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))



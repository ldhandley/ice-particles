#lang codespells

(require ice-particles/mod-info)
(require 2htdp/image)

(define-classic-rune (ice-storm)
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/2143494-200.png")
  (spawn-mod-blueprint pak-folder mod-name "IceStorm"))

(define-classic-rune (ice-ball)
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/788969-200.png")
  (spawn-mod-blueprint pak-folder mod-name "IceBall"))

(define-classic-rune (ice-ball-hit)
  #:background "red"
  #:foreground (overlay/align "left" "bottom"
               (bitmap/url "https://static.thenounproject.com/png/788969-200.png")
               (scale 0.35 (bitmap/url "https://static.thenounproject.com/png/13018-200.png")))
  (spawn-mod-blueprint pak-folder mod-name "IceBallHit"))

(define-classic-rune (ice-aura)
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/2143405-200.png")
  (spawn-mod-blueprint pak-folder mod-name "IceAura"))

(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (ice-storm ice-ball ice-ball-hit ice-aura)
  )

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".." ".."))
  
  (once-upon-a-time
   #:world (cave-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))



#lang racket

(provide mod-name pak-folder main.rkt)

(require racket/runtime-path)

(define
  mod-name
  "IceParticles")

(define-runtime-path
  pak-folder
  "BuildUnreal/WindowsNoEditor/IceParticles/Content/Paks/")

(define-runtime-path
  main.rkt
  "main.rkt")



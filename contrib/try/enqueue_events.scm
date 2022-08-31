;; Load by (load "http://localhost/zen/enqueue_events.scm")
;; The zen directory should be in your web server's document root.

(load "http://localhost/zen/queue.scm")
(define q (make-queue))

;; This variable will be used to determine how many events the main,
;; top-level event loop will dequeue each time it runs.
(define dequeuings_per_loop 6)

(define (mousemove-handler evt)
  (update-position \(`evt).clientX \(`evt).clientY)
  (enqueue! q evt))

(define (keydown-handler evt)
  (update-keycode \(`evt).keyCode)
  (enqueue! q evt))

(define (update-position x y)
  \console.log(`(object->string (list x: x y: y))))
  
(define (update-keycode c)
  \console.log(`(object->string c)))
  
(define (add-js-event-listeners)
  \document.addEventListener("mousemove", `mousemove-handler)
  \document.addEventListener("keydown", `keydown-handler))

(add-js-event-listeners)
(println "Now you can move the mouse and type in this browser tab")
(println "and watch as the events are printed in the JavaScript console.")

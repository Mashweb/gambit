;; https://cookbook.scheme.org/use-list-as-queue/

(define (make-queue)
  (cons '() '()))

;; (define q (make-queue))
;; (append 'a q)
;; (append 'b q)
(define (enqueue! q x)
  (let ((b (list x)))
    (if (null? (car q))
        (set-cdr! q b)
        (set-cdr! (car q) b))
    (set-car! q b)))

(define (queue-empty? q)
  (null? (car q)))

(define (dequeue! q)
  (let ((x (cadr q)))
    (if (null? (cddr q))
        (set-car! q '()))
    (set-cdr! q (cddr q))
    x))

(define (dequeue* q)
  (let ((x (dequeue! q)))
    (list x q)))

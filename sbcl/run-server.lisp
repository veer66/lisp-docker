(ql:quickload 'slynk)
(ql:quickload :serapeum)

(slynk:create-server :interface "0.0.0.0" :port 4023 :dont-close t)

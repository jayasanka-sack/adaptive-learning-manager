active(phone) :- available(phone), battery(phone, X), X>50.

usable(phone_accel_x) :- active(phone).
usable(phone_accel_y) :- active(phone).
usable(phone_accel_z) :- active(phone).
usable(watch_accel_x) :- active(watch).
usable(watch_accel_y) :- active(watch).
usable(watch_accel_z) :- active(watch).
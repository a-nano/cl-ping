# Cl-ping - get ping information.
## Usage

```common-lisp
(ql:quickload :cl-ping)

(cl-ping:ping "www.google.co.jp")

;=> "172.217.26.35 ����̉���: �o�C�g�� =32 ���� =6ms TTL=55"
;   "    �p�P�b�g��: ���M = 1�A��M = 1�A���� = 0 (0% �̑���)�A"
;   "    �ŏ� = 6ms�A�ő� = 6ms�A���� = 6ms"

```

## Installation
1. Clone to your local-projects
```
cd $HOME/quicklisp/local-projects
git clone https://github.com/a-nano/cl-ping.git
```
or use roswell
```
ros install a-nano/cl-ping
```

3. Start your lisp. Then, just:
```common-lisp
(ql:quickload :cl-webcam)
```

## Author

* Akihide Nano (an74abc@gmail.com)

## Copyright

Copyright(c) 2018 Akihide Nano (an74abc@gmail.com)

## License
BSD 2-Clause
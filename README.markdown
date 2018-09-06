# Cl-ping - get ping information.
## Usage

```common-lisp
(ql:quickload :cl-ping)

(cl-ping:ping "www.google.co.jp")

;=> "172.217.26.35 からの応答: バイト数 =32 時間 =6ms TTL=55"
;   "    パケット数: 送信 = 1、受信 = 1、損失 = 0 (0% の損失)、"
;   "    最小 = 6ms、最大 = 6ms、平均 = 6ms"

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
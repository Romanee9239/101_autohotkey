;*****************************************
; 日付、時刻、タイムスタンプを入力
;*****************************************
^]::
	x =
	FormatTime, x , D0, ShortDate
	ClipBoard = %x%
	Send ^v
Return

;shikoshiko
^[::
	x=
	FormatTime, x, T0, HH:mm
	ClipBoard = %x%
	Send ^v
Return

$+^]::
	x =
	FormatTime, x , D0, yyyy/MM/dd HH:mm:ss
	ClipBoard = %x%
	Send ^v
Return

$+^[::
	x=
	FormatTime, x, T0, HH:mm:ss
	ClipBoard = %x%
	Send ^v
Return

;*****************************************
; いらんキーを別のキーバインドに変更
;*****************************************
; 無変換をエンターキーに
sc07B::
	Send {Enter}
Return

; 「カタカナ/ひらがな」をAltキーに
sc070::
	Send, !
Return

;*****************************************
; 選択した文字列を記号で囲む
; ※コピーのみも可能
;*****************************************
; 「Ctrl + (」で【xxx】
$+^8::
	Send ^c
	x = %ClipBoard%
	ClipBoard = 【%x%】
	Send ^v
Return

; 「Ctrl + "」で "xxx"
$+^2::
	Send ^c
	x = %ClipBoard%
	ClipBoard = "%x%"
	Send ^v
Return

; 「Ctrl + *」で /* xxx */
$+^sc028::
	Send ^c
	x = %ClipBoard%
	ClipBoard = /* %x% */
	Send ^v
Return
;*****************************************
; 直前に入力した文字を再入力
;*****************************************

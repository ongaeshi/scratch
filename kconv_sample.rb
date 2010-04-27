# -*- coding: utf-8 -*-
# kconvを使った文字コード変換処理のサンプル
#
# Rubyist Magazine - 標準添付ライブラリ紹介 【第 3 回】 Kconv/NKF/Iconv 
# http://jp.rubyist.net/magazine/?0009-BundledLibraries#l7

require 'kconv'

str = 'Hello, るびま！'     # 何かしらの文字コードの文字列

puts str
puts str.toeuc   # 文字コードを自動判定し、 EUC-JP に変換
puts str.tosjis  # Shift_JIS に変換
puts str.tojis   # ISO-2022-JP (JIS) に変換
puts str.toutf8  # UTF-8 に変換
puts str.toutf16 # BOM 無し UTF-16BE に変換

puts str.kconv(Kconv::SJIS,  Kconv::UTF8) # 文字コードを指定して変換 UTF8 -> SJIS

# 定数 	値 	文字コード
# JIS 	1 	ISO-2022-JP
# EUC 	2 	EUC-JP
# SJIS 	3 	Shift_JIS
# BINARY	4 	バイナリ
# ASCII 	5 	ASCII
# UTF8 	6 	UTF-8
# UTF16 	8 	UTF-16 
puts Kconv.guess(str) # 文字コード類推 Kconv::UTF8






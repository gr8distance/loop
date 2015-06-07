#Debug	
puts = (s) ->
	console.log s


#Rubyのスリープのようにループ周りの関数をコントロールする
class Loop
	
	#第一引数に関数を指定
	#第二引数にループの回数（初期値は1回）
	#第三引数にループのインターバルの秒数（ms）で指定（初期値は1000ms)
	#第四引数はデバッグモードで実行するかどうか（初期値はfalse）
	#func引数がlimit回数分だけtimeミリ秒ごとにループして実行される
	do: (func,limit=1,time=1000,debug=false) ->
		c = 0
		op = setInterval(->
			func()
			c+=1
			
			if debug
				puts c

			if c==limit
				clearInterval(op)

				if debug
					puts "Finished!"

		,time)


module.exports = Loop()

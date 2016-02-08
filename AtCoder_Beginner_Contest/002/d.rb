N=99
n,m=gets.split.map(&:to_i)
h={}
m.times{
	a,b=gets.split.map(&:to_i)
	a-=1;b-=1
	h[a*N+b]=1
}
_max=1
[*2..n].each{|i|
	[*0...n].combination(i){|a|
			_max=i if a.combination(2).all?{|x,y|h[x*N+y]}
		}
}
p _max

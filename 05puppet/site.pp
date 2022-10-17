file { '/home/lucas/_git/testOct2022/05puppet/hello.txt':
  ensure  => present,
  content => "hello, world",
}
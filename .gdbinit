#generate-core-file
#set sysroot ${MAKETOP}
#set solib-absolute-prefix ${MAKETOP}
set print pretty on
set print object on
set print static-members on
set print vtbl on
set print demangle on
set print asm-demangle on
set print elements 0
set demangle-style gnu-v3

set pagination off

define syms
set sysroot $arg0
set solib-absolute-prefix $arg0
set directories $arg0
#directory ~/src/eglibc/eglibc-linaro-2.19-2014.04/malloc/
end

define datainfo
  set $s = $arg0
  set $max = ((((long)$arg1) * 4) / 4)
  set $o = 0
  printf "address        offset   data\n"
  while ($o < $max)
	printf "0x%08lx [%4d]: ", $s, $o
	output/a *(unsigned long *)($s)
	printf "\n"
	set $o += 4
	set $s += 4
  end
end

define tgtm
#  set remotebaud 115200
  target remote /dev/ttyUSB1
end

define tgtr
  target remote 172.16.250.248:2345
end



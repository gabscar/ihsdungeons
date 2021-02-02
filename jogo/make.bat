rgbasm -o hUGEDriver.obj hUGEDriver.asm
rgb2sdas hUGEDriver.obj

C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -c -o game.o game.c

C:\gbdk\bin\lcc -Wa-l -Wl-m -Wl-j -o game.gb game.o hUGEDriver.obj.o ihsMusic.c 



del *.ihx,*.noi,*.o,*.sym,*.lst



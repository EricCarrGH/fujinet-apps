#ifdef __ATARI__

#include<peekpoke.h>
#include<stdlib.h>
#include<stdint.h>
#include<atari.h>
#include<string.h>
#include "../misc.h"
#include"../fujinet-fuji.h"

void resetGraphics();

void resetTimer() {
 //bzero(0x12,3);
 POKEW(0x13,0);
}

int getTime() {
  return (PEEK(0x13)*256)+PEEK(0x14);
//  return OS.rtclok[1]*256+OS.rtclok[2];
  //return 
}

void quit() {
  // Possible to revert screen to boot normals
  //
  //
  fuji_set_boot_config(1);
  exit(0);
}

#endif /* __ATARI__ */
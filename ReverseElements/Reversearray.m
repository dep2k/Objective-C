{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf100
{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red255\green255\blue254;\red0\green0\blue0;
\red144\green1\blue18;\red19\green120\blue72;\red15\green112\blue1;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c100000;\cssrgb\c100000\c100000\c99608;\cssrgb\c0\c0\c0;
\cssrgb\c63922\c8235\c8235;\cssrgb\c3529\c53333\c35294;\cssrgb\c0\c50196\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl460\partightenfactor0

\f0\fs30 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #import\cf4 \strokec4  <Foundation/Foundation.h>\cb1 \
\
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3 NSArray *array;\cb1 \
\
\pard\pardeftab720\sl460\partightenfactor0
\cf2 \cb3 \strokec2 void\cf4 \strokec4  printString() \{\cb1 \
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3     \cf2 \strokec2 for\cf4 \strokec4  (NSString *aString \cf2 \strokec2 in\cf4 \strokec4  array) \{\cb1 \
\cb3         printf(\cf5 \strokec5 "%s\\n"\cf4 \strokec4 , [aString UTF8String]);\cb1 \
\cb3     \}\cb1 \
\cb3 \}\cb1 \
\
\pard\pardeftab720\sl460\partightenfactor0
\cf2 \cb3 \strokec2 int\cf4 \strokec4  main() \{\cb1 \
\
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3     NSInteger t;\cb1 \
\cb3     scanf(\cf5 \strokec5 "%lu"\cf4 \strokec4 , &t);\cb1 \
\cb3     NSMutableArray * stringsArray = [[NSMutableArray alloc] initWithCapacity:t];\cb1 \
\cb3     \cf2 \strokec2 for\cf4 \strokec4  (NSInteger i = \cf6 \strokec6 0\cf4 \strokec4 ; i < t; i++) \{\cb1 \
\cb3             NSString *word;\cb1 \
\cb3             \cf2 \strokec2 char\cf4 \strokec4 * word_temp = (\cf2 \strokec2 char\cf4 \strokec4  *)malloc(\cf6 \strokec6 512000\cf4 \strokec4  * \cf2 \strokec2 sizeof\cf4 \strokec4 (\cf2 \strokec2 char\cf4 \strokec4 ));\cb1 \
\cb3             scanf(\cf5 \strokec5 "%s"\cf4 \strokec4 ,word_temp);\cb1 \
\cb3             word = [NSString stringWithFormat:@\cf5 \strokec5 "%s"\cf4 \strokec4 , word_temp];\cb1 \
\cb3             [stringsArray addObject: word];\cb1 \
\cb3     \}\cb1 \
\cb3     \cf7 \strokec7 // reverse the array\cf4 \cb1 \strokec4 \
\cb3     array = [[stringsArray reverseObjectEnumerator] allObjects];\cb1 \
\cb3     \cb1 \
\cb3     printString();\cb1 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 return\cf4 \strokec4  \cf6 \strokec6 0\cf4 \strokec4 ;\cb1 \
\cb3 \}\cb1 \
}
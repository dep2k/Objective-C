{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf100
{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red255\green255\blue254;\red0\green0\blue0;
\red144\green1\blue18;\red19\green120\blue72;\red15\green112\blue1;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c100000;\cssrgb\c100000\c100000\c99608;\cssrgb\c0\c0\c0;
\cssrgb\c63922\c8235\c8235;\cssrgb\c3529\c53333\c35294;\cssrgb\c0\c50196\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww17480\viewh5820\viewkind0
\deftab720
\pard\pardeftab720\sl460\partightenfactor0

\f0\fs30 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #import\cf4 \strokec4  <Foundation/Foundation.h>\cb1 \
\
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3 NSArray *animalsName;\cb1 \
\cb3 NSArray *mammalsName;\cb1 \
\
\pard\pardeftab720\sl460\partightenfactor0
\cf2 \cb3 \strokec2 void\cf4 \strokec4  print()\cb1 \
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3 \{\cb1 \
\cb3     NSData *loadedData = [[NSData alloc] initWithContentsOfFile: @\cf5 \strokec5 "AnimalsMammals.dat"\cf4 \strokec4 ];\cb1 \
\cb3     NSKeyedUnarchiver *dataUnarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData: loadedData];\cb1 \
\
\cb3     \cf2 \strokec2 for\cf4 \strokec4  (NSString *name \cf2 \strokec2 in\cf4 \strokec4  animalsName) \{\cb1 \
\cb3         [[dataUnarchiver decodeObjectForKey: name] printInfo];\cb1 \
\
\cb3         printf(\cf5 \strokec5 "\\n"\cf4 \strokec4 );\cb1 \
\cb3     \}\cb1 \
\
\cb3     \cf2 \strokec2 for\cf4 \strokec4  (NSString *name \cf2 \strokec2 in\cf4 \strokec4  mammalsName) \{\cb1 \
\cb3         [[dataUnarchiver decodeObjectForKey: name] printInfo];\cb1 \
\cb3         printf(\cf5 \strokec5 "\\n"\cf4 \strokec4 );\cb1 \
\cb3     \}\cb1 \
\
\cb3     [dataUnarchiver finishDecoding];\cb1 \
\cb3 \}\cb1 \
\
\pard\pardeftab720\sl460\partightenfactor0
\cf2 \cb3 \strokec2 @interface\cf4 \strokec4  Animal : NSObject<NSCoding>\cb1 \
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3 \{\cb1 \
\cb3     NSString *animalName;\cb1 \
\cb3     \cf2 \strokec2 int\cf4 \strokec4  numberOfLegs;\cb1 \
\cb3 \}\cb1 \
\
\cb3 - (instancetype) initWithName:(NSString*)name Legs:(NSInteger)legs;\cb1 \
\cb3 - (\cf2 \strokec2 void\cf4 \strokec4 ) printInfo;\cb1 \
\pard\pardeftab720\sl460\partightenfactor0
\cf2 \cb3 \strokec2 @end\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 @interface\cf4 \strokec4  Mammal : Animal<NSCoding>\cb1 \
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3 \{\cb1 \
\cb3     NSString *mammalType;\cb1 \
\cb3     NSMutableArray *foodList;\cb1 \
\cb3 \}\cb1 \
\
\cb3 - (instancetype) initWithName:(NSString*)name mammalType:(NSString*)type;\cb1 \
\cb3 - (\cf2 \strokec2 void\cf4 \strokec4 ) addFood:(NSString*)food;\cb1 \
\pard\pardeftab720\sl460\partightenfactor0
\cf2 \cb3 \strokec2 @end\cf4 \cb1 \strokec4 \
\
\
\cf2 \cb3 \strokec2 @implementation\cf4 \strokec4   Animal\cb1 \
\
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3 - (\cf2 \strokec2 id\cf4 \strokec4 )initWithCoder:(NSCoder *)decoder \{\cb1 \
\cb3     \cf2 \strokec2 if\cf4 \strokec4  (\cf2 \strokec2 self\cf4 \strokec4  = [\cf2 \strokec2 super\cf4 \strokec4  init]) \{\cb1 \
\cb3         animalName = [decoder decodeObjectForKey:@\cf5 \strokec5 "animalName"\cf4 \strokec4 ];\cb1 \
\cb3         numberOfLegs = [[decoder decodeObjectForKey:@\cf5 \strokec5 "numberOfLegs"\cf4 \strokec4 ] intValue];\cb1 \
\cb3     \}\cb1 \
\cb3     \cf2 \strokec2 return\cf4 \strokec4  \cf2 \strokec2 self\cf4 \strokec4 ;\cb1 \
\cb3 \}\cb1 \
\
\cb3 - (instancetype) initWithName:(NSString*)name Legs:(NSInteger)legs \{\cb1 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 if\cf4 \strokec4 (\cf2 \strokec2 self\cf4 \strokec4  =[\cf2 \strokec2 super\cf4 \strokec4  init])\{\cb1 \
\cb3         animalName = name;\cb1 \
\cb3         numberOfLegs = (\cf2 \strokec2 int\cf4 \strokec4 )legs;\cb1 \
\cb3     \}\cb1 \
\cb3     \cf2 \strokec2 return\cf4 \strokec4  \cf2 \strokec2 self\cf4 \strokec4 ;\cb1 \
\cb3 \}\cb1 \
\
\cb3 - (\cf2 \strokec2 void\cf4 \strokec4 ) printInfo \{\cb1 \
\cb3     printf(\cf5 \strokec5 "%s %d \\n"\cf4 \strokec4 , [animalName UTF8String], numberOfLegs);\cb1 \
\cb3     \cb1 \
\cb3 \}\cb1 \
\
\cb3 - (\cf2 \strokec2 void\cf4 \strokec4 )encodeWithCoder:(NSCoder *)encoder \{\cb1 \
\cb3     [encoder encodeObject:animalName forKey:@\cf5 \strokec5 "animalName"\cf4 \strokec4 ];\cb1 \
\cb3     [encoder encodeObject:[NSNumber numberWithInt:numberOfLegs] forKey:@\cf5 \strokec5 "numberOfLegs"\cf4 \strokec4 ];\cb1 \
\cb3 \}\cb1 \
\pard\pardeftab720\sl460\partightenfactor0
\cf2 \cb3 \strokec2 @end\cf4 \cb1 \strokec4 \
\
\
\
\cf2 \cb3 \strokec2 @implementation\cf4 \strokec4   Mammal\cb1 \
\
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3 - (\cf2 \strokec2 id\cf4 \strokec4 )initWithCoder:(NSCoder *)decoder \{\cb1 \
\cb3     \cf2 \strokec2 if\cf4 \strokec4  (\cf2 \strokec2 self\cf4 \strokec4  = [\cf2 \strokec2 super\cf4 \strokec4  init]) \{\cb1 \
\cb3         animalName = [decoder decodeObjectForKey:@\cf5 \strokec5 "animalName"\cf4 \strokec4 ];\cb1 \
\cb3         mammalType = [decoder decodeObjectForKey:@\cf5 \strokec5 "mammalType"\cf4 \strokec4 ];\cb1 \
\cb3         foodList = [decoder decodeObjectForKey:@\cf5 \strokec5 "foodList"\cf4 \strokec4 ];\cb1 \
\cb3         numberOfLegs = \cf6 \strokec6 4\cf4 \strokec4 ;   \cb1 \
\cb3     \}\cb1 \
\cb3     \cf2 \strokec2 return\cf4 \strokec4  \cf2 \strokec2 self\cf4 \strokec4 ;\cb1 \
\cb3 \}\cb1 \
\
\cb3 - (instancetype) initWithName:(NSString*)name mammalType:(NSString*)type \{\cb1 \
\cb3     \cf2 \strokec2 if\cf4 \strokec4  (\cf2 \strokec2 self\cf4 \strokec4  = [\cf2 \strokec2 super\cf4 \strokec4  init]) \{\cb1 \
\cb3         animalName = name;\cb1 \
\cb3         numberOfLegs = \cf6 \strokec6 4\cf4 \strokec4 ;\cb1 \
\cb3         mammalType = type;\cb1 \
\cb3         foodList = [NSMutableArray new];\cb1 \
\cb3     \}\cb1 \
\cb3     \cf2 \strokec2 return\cf4 \strokec4  \cf2 \strokec2 self\cf4 \strokec4 ;\cb1 \
\cb3 \}\cb1 \
\
\cb3 - (\cf2 \strokec2 void\cf4 \strokec4 ) printInfo \{\cb1 \
\
\cb3     printf(\cf5 \strokec5 "%s 4 \\n"\cf4 \strokec4 , [animalName UTF8String]);\cb1 \
\cb3     printf(\cf5 \strokec5 "%s \\n"\cf4 \strokec4 , [mammalType UTF8String]);\cb1 \
\cb3     printf(\cf5 \strokec5 "%d: "\cf4 \strokec4 ,foodList.count);\cb1 \
\cb3     \cf2 \strokec2 for\cf4 \strokec4  (NSString * food \cf2 \strokec2 in\cf4 \strokec4  foodList)\{\cb1 \
\cb3         printf(\cf5 \strokec5 "%s "\cf4 \strokec4 ,[food UTF8String]);\cb1 \
\cb3     \}\cb1 \
\cb3     printf(\cf5 \strokec5 "\\n"\cf4 \strokec4 );\cb1 \
\cb3 \}\cb1 \
\
\cb3 - (\cf2 \strokec2 void\cf4 \strokec4 )encodeWithCoder:(NSCoder *)encoder \{\cb1 \
\
\cb3     [encoder encodeObject:animalName forKey:@\cf5 \strokec5 "animalName"\cf4 \strokec4 ];\cb1 \
\cb3     [encoder encodeObject:mammalType forKey:@\cf5 \strokec5 "mammalType"\cf4 \strokec4 ];\cb1 \
\cb3     [encoder encodeObject:foodList forKey:@\cf5 \strokec5 "foodList"\cf4 \strokec4 ];   \cb1 \
\cb3 \}\cb1 \
\
\
\cb3 -(\cf2 \strokec2 void\cf4 \strokec4 )addFood:(NSString*)food \{\cb1 \
\cb3     [foodList addObject:food];\cb1 \
\cb3 \}\cb1 \
\pard\pardeftab720\sl460\partightenfactor0
\cf2 \cb3 \strokec2 @end\cf4 \cb1 \strokec4 \
\
\
\
\
\
\cf2 \cb3 \strokec2 int\cf4 \strokec4  main()\cb1 \
\pard\pardeftab720\sl460\partightenfactor0
\cf4 \cb3 \{\cb1 \
\cb3     \cb1 \
\cb3     @autoreleasepool \{\cb1 \
\cb3         \cb1 \
\cb3         NSMutableArray * words =   [NSMutableArray new];\cb1 \
\cb3         NSMutableArray * mammals = [NSMutableArray new];\cb1 \
\cb3         NSMutableArray * animals = [NSMutableArray new];\cb1 \
\cb3         \cb1 \
\cb3        \cb1 \
\cb3         NSInteger t;\cb1 \
\cb3         scanf(\cf5 \strokec5 "%lu"\cf4 \strokec4 , &t);\cb1 \
\
\cb3         \cf7 \strokec7 // Add all the entries into the array\cf4 \cb1 \strokec4 \
\cb3          NSString *word;\cb1 \
\cb3          \cf2 \strokec2 char\cf4 \strokec4 * word_temp = (\cf2 \strokec2 char\cf4 \strokec4  *)malloc(\cf6 \strokec6 512000\cf4 \strokec4  * \cf2 \strokec2 sizeof\cf4 \strokec4 (\cf2 \strokec2 char\cf4 \strokec4 ));\cb1 \
\cb3         scanf(\cf5 \strokec5 "%[^\\n]"\cf4 \strokec4 ,word_temp);\cb1 \
\cb3         word = [NSString stringWithFormat:@\cf5 \strokec5 "%s"\cf4 \strokec4 , word_temp];\cb1 \
\cb3         printf(\cf5 \strokec5 "%s \\n"\cf4 \strokec4 ,[word UTF8String]);\cb1 \
\cb3         \cf2 \strokec2 return\cf4 \strokec4  \cf6 \strokec6 0\cf4 \strokec4 ;\cb1 \
\cb3       \cb1 \
\cb3         \cf2 \strokec2 while\cf4 \strokec4  ( scanf(\cf5 \strokec5 "%s"\cf4 \strokec4 ,word_temp) >= \cf6 \strokec6 1\cf4 \strokec4 )\{\cb1 \
\cb3             \cb1 \
\cb3              word = [NSString stringWithFormat:@\cf5 \strokec5 "%s"\cf4 \strokec4 , word_temp];\cb1 \
\cb3              printf(\cf5 \strokec5 "%s \\n"\cf4 \strokec4 ,[word UTF8String]);\cb1 \
\cb3             [words addObject:word];\cb1 \
\cb3         \}\cb1 \
\cb3     \cb1 \
\cb3         \cf2 \strokec2 while\cf4 \strokec4  ([words count] > \cf6 \strokec6 0\cf4 \strokec4 )\{\cb1 \
\cb3             \cf2 \strokec2 int\cf4 \strokec4  index = \cf6 \strokec6 0\cf4 \strokec4 ;\cb1 \
\cb3             NSString *word = words[index];\cb1 \
\
\cb3             \cf2 \strokec2 if\cf4 \strokec4 ([word isEqualToString:@\cf5 \strokec5 "A"\cf4 \strokec4 ])\{\cb1 \
\cb3             \cb1 \
\cb3                 NSString *animalName = words[index+\cf6 \strokec6 1\cf4 \strokec4 ];\cb1 \
\cb3                 NSString *animalLegs = words[index+\cf6 \strokec6 2\cf4 \strokec4 ];\cb1 \
\cb3                 Animal *animal = [[Animal alloc] initWithName:animalName Legs:(NSInteger)[animalLegs intValue]];\cb1 \
\cb3                 [animals addObject: animal];\cb1 \
\cb3                 \cb1 \
\cb3                 [words removeObjectsInRange: NSMakeRange(\cf6 \strokec6 0\cf4 \strokec4 , \cf6 \strokec6 3\cf4 \strokec4 )];\cb1 \
\cb3                 \cf7 \strokec7 // Removing Items\cf4 \cb1 \strokec4 \
\cb3             \} \cf2 \strokec2 else\cf4 \strokec4  \cf2 \strokec2 if\cf4 \strokec4  ([word isEqualToString:@\cf5 \strokec5 "M"\cf4 \strokec4 ]) \{\cb1 \
\cb3             \cb1 \
\cb3                 NSString * mammalName = words[index+\cf6 \strokec6 1\cf4 \strokec4 ];\cb1 \
\cb3                 NSString *mammalType = words[index+\cf6 \strokec6 2\cf4 \strokec4 ];\cb1 \
\cb3                 \cb1 \
\cb3                 \cf7 \strokec7 // Need not to save this\cf4 \cb1 \strokec4 \
\cb3                 NSString *foodCountStr = words[index+\cf6 \strokec6 3\cf4 \strokec4 ];\cb1 \
\cb3                 NSInteger foodCount = [foodCountStr intValue];\cb1 \
\cb3                 \cb1 \
\cb3                 Mammal *mammal = [[Mammal alloc] initWithName:mammalName mammalType:mammalType];\cb1 \
\cb3                 \cb1 \
\cb3                 \cf2 \strokec2 if\cf4 \strokec4  (foodCount > \cf6 \strokec6 0\cf4 \strokec4 )\{\cb1 \
\cb3                     \cf2 \strokec2 for\cf4 \strokec4  (\cf2 \strokec2 int\cf4 \strokec4  i=\cf6 \strokec6 1\cf4 \strokec4 ; i <= foodCount; i++)\{\cb1 \
\cb3                         NSString *foodName = words[index + \cf6 \strokec6 3\cf4 \strokec4  + i];\cb1 \
\cb3                         [mammal addFood:foodName];\cb1 \
\cb3                     \}\cb1 \
\cb3                 \}\cb1 \
\
\cb3                 [mammals addObject:mammal];\cb1 \
\cb3                 [words removeObjectsInRange: NSMakeRange(\cf6 \strokec6 0\cf4 \strokec4 , \cf6 \strokec6 4\cf4 \strokec4  + foodCount)];\cb1 \
\cb3              \}\cb1 \
\cb3        \cb1 \
\cb3         \}\cb1 \
\cb3      \cb1 \
\cb3          NSMutableArray *aNames = [NSMutableArray new];\cb1 \
\cb3          NSMutableArray *mNames = [NSMutableArray new];\cb1 \
\
\cb3          NSMutableData *data = [[NSMutableData alloc] init];\cb1 \
\cb3          NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];\cb1 \
\
\cb3          \cf2 \strokec2 int\cf4 \strokec4  index = \cf6 \strokec6 0\cf4 \strokec4 ;\cb1 \
\cb3          \cf2 \strokec2 for\cf4 \strokec4  (Animal *a \cf2 \strokec2 in\cf4 \strokec4  animals)\{\cb1 \
\cb3       \cb1 \
\cb3             NSString *name = [NSString stringWithFormat:@\cf5 \strokec5 "A%d"\cf4 \strokec4 ,index++];\cb1 \
\cb3             [aNames addObject:name];\cb1 \
\cb3             [archiver encodeObject:a forKey:name];\cb1 \
\cb3               \cb1 \
\cb3         \}\cb1 \
\cb3         animalsName = aNames;\cb1 \
\cb3     \cb1 \
\cb3         index = \cf6 \strokec6 0\cf4 \strokec4 ;\cb1 \
\cb3         \cf2 \strokec2 for\cf4 \strokec4  (Mammal *m \cf2 \strokec2 in\cf4 \strokec4  mammals)\{\cb1 \
\cb3       \cb1 \
\cb3             NSString *name = [NSString stringWithFormat:@\cf5 \strokec5 "M%d"\cf4 \strokec4 ,index++];\cb1 \
\cb3             [mNames addObject:name];\cb1 \
\cb3             [archiver encodeObject:m forKey:name];\cb1 \
\cb3         \}\cb1 \
\
\cb3         [archiver finishEncoding];\cb1 \
\cb3         [data writeToFile:@\cf5 \strokec5 "AnimalsMammals.dat"\cf4 \strokec4  atomically:\cf2 \strokec2 true\cf4 \strokec4 ];\cb1 \
\cb3         mammalsName = mNames;\cb1 \
\
\
\cb3         print();\cb1 \
\cb3     \}\cb1 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 return\cf4 \strokec4  \cf6 \strokec6 0\cf4 \strokec4 ;\cb1 \
\cb3 \}\cb1 \
}
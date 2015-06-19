//
//  WowUtilsTests.m
//  GuildBrowser
//
//  Created by Abel Castro on 19/6/15.
//  Copyright (c) 2015 Charlie Fulton. All rights reserved.
//

#import "WowUtilsTests.h"
#import "WoWUtils.h"

@implementation WowUtilsTests

-(void) testCharacterClassNameLookup
{
    STAssertEqualObjects(@"Warrior",
                         [WoWUtils classFromCharacterType:1],
                         @"ClassType should be Warrior");
    
    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]],
                  nil);
    STAssertFalse([@"Monk" isEqualToString:[WoWUtils classFromCharacterType:5]],
                  nil);
    STAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]],
                 nil);
    
    STAssertTrue([@"Hunter" isEqualToString:[WoWUtils classFromCharacterType:3]],
                 nil);
}

- (void)testRaceTypeLookup
{
    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], nil);
    STAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], nil);
    STAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]],nil);
    // add the rest as an exercise
}

- (void)testQualityLookup
{
    
    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]],nil);
    // add the rest as an exercise
     STAssertTrue([@"Orange" isEqualToString:[WoWUtils qualityFromQualityType:6]],nil);
}

@end

//
//  CharacterTests.m
//  GuildBrowser
//
//  Created by Abel Castro on 19/6/15.
//  Copyright (c) 2015 Charlie Fulton. All rights reserved.
//

#import "CharacterTests.h"
#import "Character.h"
#import "Item.h"

@implementation CharacterTests
{
    NSDictionary *characterDetailJson;
}

-(void)setUp
{
    NSURL *dataServiceURL = [[NSBundle bundleForClass:self.class]
                             URLForResource:@"character" withExtension:@"json"];
    
    // 4
    NSData *sampleData = [NSData dataWithContentsOfURL:dataServiceURL];
    NSError *error;
    
    // 5
    id json = [NSJSONSerialization JSONObjectWithData:sampleData
                                              options:kNilOptions
                                                error:&error];
    STAssertNotNil(json, @"invalid test data");
    
    
    characterDetailJson = json;
    
}

-(void)tearDown
{
    characterDetailJson = nil;
}

- (void)testCreateCharacterFromDetailJson
{
    // 2
    Character *testGuy1 = [[Character alloc] initWithCharacterDetailData:characterDetailJson];
    STAssertNotNil(testGuy1, @"Could not create character from detail json");
    
    // 3
    //Character *testGuy2 = [[Character alloc] initWithCharacterDetailData:nil];
    //STAssertNotNil(testGuy2, @"Could not create character from nil data");
}

@end


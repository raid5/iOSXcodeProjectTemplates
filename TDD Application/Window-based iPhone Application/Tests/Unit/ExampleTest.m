//
//  ExampleTest.m
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h> 
#import <OCMock/OCMock.h>
#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

@interface ExampleTest : GHTestCase { }
@end

@implementation ExampleTest

- (BOOL)shouldRunOnMainThread {
	// By default NO, but if you have a UI test or test dependent on running on the main thread return YES
	return NO;
}

- (void)setUpClass {
	// Run at start of all tests in the class
}

- (void)tearDownClass {
	// Run at end of all tests in the class
}

- (void)setUp {
	// Run before each test method
}

- (void)tearDown {
	// Run after each test method
}  

- (void)testFoo {       
	NSString *a = @"foo";
	GHTestLog(@"I can log to the GHUnit test console: %@", a);
	
	// Assert a is not NULL, with no custom error description
	GHAssertNotNULL(a, nil);
	
	// Assert equal objects, add custom error description
	NSString *b = @"bar";
	GHAssertEqualObjects(a, b, @"A custom error message. a should be equal to: %@.", b);
}

- (void)testBar {
	// Another test
}

- (void)testOCMock {
	id theMock = [OCMockObject mockForClass:[NSString class]];
	[[theMock expect] length];
	[theMock verify];
}

- (void)testOCHamcrest {
	NSDictionary *d = [NSDictionary dictionary];
	assertThat(d, instanceOf([NSDictionary class]));
}

@end


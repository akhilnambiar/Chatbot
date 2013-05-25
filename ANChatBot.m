//
//  ANChatBot.m
//  ChatBot
//
//  Created by Akhil Nambiar on 1/9/13.
//
//

#import "ANChatBot.h"

@implementation ANChatBot

+ (NSString *)screenName
{
    return @"Tender Coconuts";
}
- (void)respondToChatMessage:(NSString *)chatMessage
{
    if ([chatMessage hasPrefix: @"timer"])
    {
        [chatMessage substringFromIndex:6];
    }
    if ([chatMessage hasPrefix: @"remember"])
    {
        rememberedString = [chatMessage retain];
    }
    if ([chatMessage hasPrefix: @"recall"])
    {
        [self sendMessage: rememberedString];
    }
    if ([chatMessage isEqual: @"date"])
    {
        [self sendMessage:[[NSDate date] description]];
    }
    if ([chatMessage isEqual: @"hello"])
    {
        [self sendMessage:[NSString stringWithFormat:@"hello", chatMessage]];
    }
}


@end

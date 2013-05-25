//
//  ANChatBot.h
//  ChatBot
//
//  Created by Akhil Nambiar on 1/9/13.
//
//

#import <Foundation/Foundation.h>
#import "CBChatBot.h"

@interface ANChatBot : CBChatBot
{
    NSString *rememberedString;
}
+ (NSString *)screenName;
- (void)respondToChatMessage:(NSString *)chatMessage;

@end

//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"
//#import "FISTicTacToeViewController.h"
//#import "FISNewGameViewController.h"

@interface FISTicTacToeGame ()

//@property (nonatomic, strong) NSMutableArray *board;

//@property (nonatomic, strong) NSUInteger *playerXScore;

@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        [self resetBoard];
        
        
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)
    }

    return self;
}

-(void)resetBoard
{
    self.board = [@[ [@[@"", @"", @""] mutableCopy],
                     [@[@"", @"", @""] mutableCopy],
                     [@[@"", @"", @""] mutableCopy] ] mutableCopy];
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    NSString *playerPosition = self.board[row][column];
    return playerPosition;
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    if ([self.board[row][column] isEqualToString:@""]) {
        return YES;
    } else {
        return NO;
    }
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[row][column] = @"X";
}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[row][column] = @"O";
}

-(NSString *)winningPlayer {
    NSString *player = @"";
    NSString *winner = @"";
    
    
    for (NSUInteger i = 0; i < [self.board count]; i++) {
        if ([self.board[i][i] isEqualToString:@"X"]) {
            player = @"X";
        } else if ([self.board[i][i] isEqualToString:@"O"]) {
            player = @"O";
        }
             
        if ([self.board[0][i] isEqualToString:player] && [self.board[1][i] isEqualToString:player] && [self.board[2][i] isEqualToString:player]) {
            winner = player;
        } else if ([self.board[i][0] isEqualToString:player] && [self.board[i][1] isEqualToString:player] && [self.board[i][2] isEqualToString:player]){
            winner = player;
        } else if ([self.board[2][0] isEqualToString:player] && [self.board[1][1] isEqualToString:player] && [self.board[0][2] isEqualToString:player]){
            winner = player;
        } else if ([self.board[0][0] isEqualToString:player] && [self.board[1][1] isEqualToString:player] && [self.board[2][2] isEqualToString:player]) {
            winner = player;
        }
    }
    
//    00, 01 02
//    10  11 12
//    20  21 22

    return winner;
}

-(BOOL)isADraw {
    for (NSUInteger i = 0; i < [self.board count]; i++) {
        if ([self.board[i] containsObject:@""]) {
            return NO;
        }
    }
    return YES;
}
            

@end

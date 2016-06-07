//
//  FISComputerPlayer.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISComputerPlayer.h"

@implementation FISComputerPlayer

+(BOOL)isEnabled
{
    return YES;
}

-(FISTicTacToePosition)nextPlay {
    
////    NSLog(@"%@", self.game.board);
    NSUInteger randomColumn = arc4random_uniform(3);
    NSUInteger randomRow = arc4random_uniform(3);
//
    for (NSUInteger i = 0; i < 3; i++) {
        if ((_board[0][i] == _board[1][i]) && ([_board[0][i] isEqualToString:@""])) {
            return FISTicTacToePositionMake(0, i);
        } else if ((_board[2][0] == _board[1][0]) && ([_board[2][0] isEqualToString:@""])){
            return FISTicTacToePositionMake(0, 0);
        } else if ((_board[0][2] == _board[0][1]) && ([_board[0][2] isEqualToString:@""])){
            return FISTicTacToePositionMake(0, 0);
        } else if ((_board[1][i] == _board[1][i]) && ([_board[1][i] isEqualToString:@""])){
            return FISTicTacToePositionMake(1, i);
        } else if ((_board[2][i] == _board[1][i]) && ([_board[2][i] isEqualToString:@""])){
            return FISTicTacToePositionMake(2, i);
        } else {
            return FISTicTacToePositionMake(randomColumn, randomRow);
        }
    }
   
    
//    while (![self.game canPlayAtColumn:randomColumn row:randomRow]){
//        randomColumn = arc4random_uniform(3);
//        randomRow = arc4random_uniform(3);
//    }
//    
    
}
@end

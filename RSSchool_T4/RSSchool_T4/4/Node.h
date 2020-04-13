//
//  Node.h
//  RSSchool_T4
//
//  Created by Anton Petrash on 4/13/20.
//  Copyright © 2020 iOSLab. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject

- (instancetype)initNewNode;

@property NSInteger number;

@property (nonatomic, weak) Node *left;
@property (nonatomic, weak) Node *right;

@end

NS_ASSUME_NONNULL_END

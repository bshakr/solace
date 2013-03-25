//
//  BSCheckBox.m
//  solace
//
//  Created by Bassem on 24/03/2013.
//  Copyright (c) 2013 Bassem Shaker. All rights reserved.
//

#import "BSCheckBox.h"
@interface BSCheckBox ()
{
    
}
@end

@implementation BSCheckBox
@synthesize checked;


-(id)initWithFrame:(CGRect)frame{
    
    if(self == [super initWithFrame:frame]){
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        [self setImage:[UIImage imageNamed:@"checkbox-unchecked.png"] forState:UIControlStateNormal];
        
    }
    
    return self;
    
}




@end
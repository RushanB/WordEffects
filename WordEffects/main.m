//
//  main.m
//  WordEffects
//
//  Created by Rushan on 2017-05-01.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        char inputChars[255];
        
        printf("Input a string: ");
        
        fgets(inputChars, 255, stdin);
        
        printf("Your string is: %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        NSLog(@"Input was: %@", inputString);
        
        
        
        int option;
        
        do{
            
            printf("\nPick one of these operations to cause Effects to your String: \n");
            printf("Press 0 to Exit \n");
            printf("Press 1 to Uppercase \n");
            printf("Press 2 to Lowercase \n");
            printf("Press 3 to Numberize \n");
            printf("Press 4 to Canadianize \n");
            printf("Press 5 to Respond to ? or ! \n");
            printf("Press 6 to De-Space-It \n");
            printf("Press 7 to Word Count \n");
            scanf("%i", &option);
            
            
            switch(option){
                case 0:{
                    break;
                }
                case 1:{
                    NSString *upperCase = [inputString uppercaseString];//UPPERCASE #1
                    NSLog(@"Your result is: %@ \n",upperCase);
                    break;
                }
                case 2:{
                    NSString *lowerCase = [inputString lowercaseString];    //lowercase #2
                    NSLog(@"Your result is: %@ \n",lowerCase);
                    break;
                }
                case 3:{
                    NSUInteger numberCase = [inputString length];   //converts int to text #3
                    NSLog(@"Your result is: %lu \n",(unsigned long)numberCase);
                    break;
                }
                case 4:{
                    NSString *canadaCase = [inputString stringByAppendingString:@".. eh?"];   //adds "eh?" to it appendString: #4
                    NSLog(@"Your result is: %@ ",canadaCase);
                    break;
                }
                case 5:{
                    NSUInteger tempNumb = [inputString length];
                    NSString *respondCase =[inputString substringFromIndex:(tempNumb-2)];  //"?" = IDK or "!" = WHOA appendFormat:  #5
                    if([respondCase containsString:(@"?")]){
                        NSLog(@"I don't know?");
                    } else if([respondCase containsString:(@"!")]) {
                        NSLog(@"Whoa, calm down!");
                    }
                    break;
                }
                case 6:{
                    NSString *spaceCase;
                    if([inputString containsString:@" "]){
                        spaceCase = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    }
                    NSLog(@"Your result is: %@ \n", spaceCase);
                    break;
                }
                case 7:{
                    int words;
                    for (int i=0; i<[inputString length]; i++){
                        if([inputString characterAtIndex:i] == ' '){
                            words++;
                        }
                    }
                    NSLog(@"Your result is: %i \n",(words +1));
                }
                    break;
                default:
                    break;
            }
            
        }while(option!=0);
    }
    return 0;
}


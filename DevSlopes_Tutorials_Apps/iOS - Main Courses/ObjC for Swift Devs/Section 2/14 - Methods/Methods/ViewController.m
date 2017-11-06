//
//  ViewController.m
//  Methods
//
//  Created by Jakub Majewski on 22.08.2017.
//  Copyright © 2017 Jakub Majewski. All rights reserved.
//


//Funkcje definiuje się w plikach .h
//Implementuje się je w plikach .m
//Nie dajemy STRONG do czegoś co nie jest klasą, obiektem

//W swifcie istnieje class func
//Jest to funkcja statyczna w Swifcie, tworzy ją się w klasie
//Dzięki temu tworzymy tylko raz funkcje
//Nie zajmuje ona więcej miejsca jak jedno w pamięci dla siebie
//Pomimo tworzenia wielu obiektów 

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bankAccount = 500.50;
    self.itemAmount = 400.00;
    
    
    
    
    
    
    
}

// - (return type)functionName:(argument type)argument name
- (BOOL)canPurchase:(double)amount {
    
    if (self.bankAccount >= amount )
        return YES;
    else
        return NO;
}

//(argument type) argument name
- (void)declareWinnerWithPlayerScore:(NSInteger)scoreA playerB:(NSInteger)scoreB {
    if (scoreA > scoreB)
        NSLog(@"Player A wins");
    else if (scoreA < scoreB)
        NSLog(@"Player B wins");
    else
        NSLog(@"The game is at a standstill");
}


- (void)playground {
    // nawias [] oznacza, że będę wywoływał funkcję
    if ([self canPurchase:self.itemAmount])
        NSLog(@"We can buy!");
    
    [self declareWinnerWithPlayerScore:55 playerB:66];
    
    //Tworzenie obiektu na podstawie klasy Person
    Person *person =[[Person alloc]init];
    [person speakName];
    [Person stateSpacies];
    
    //Wywoływanie statycznych funkcji
    //Obydwa przypadki robią to samo
    //Pierwszy jest zgdny z dobrymi praktykami ObjC
    UIImage *image1 = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://google.com"]]];
    
    //Drugi zgodny z dobrymi praktykami Swift
    NSString *urlString = @"http://google.com";
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image2 = [UIImage imageWithData:data];
    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

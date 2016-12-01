

/**
 http://www.jianshu.com/p/d96def4c781a
 */

#import "ViewController.h"
#import "DictionRecordItem.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    DictationRecordItem *item = [DictationRecordItem new];
    item.lastModify = 23869878;
    item.date = 2386276;
    item.type = 1;
    item.sampleCount = 382638;
    NSLog(@"item:%@",item);
    
    NSData * dataItem = item.data;
    NSString * filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:@"DictationRecordItem"];
    NSLog(@"\n filePath:%@，\n length:%ld字节", filePath, (long)[dataItem length]);
    [dataItem writeToFile:filePath atomically:YES];
    
   
    NSError * error = nil;
    NSData * dataRecover = [NSData dataWithContentsOfFile:filePath];
    DictationRecordItem * itemRecover = [[DictationRecordItem alloc] initWithData:dataRecover error:&error];
    NSLog(@"dataRecover:%@", itemRecover);
    
    
    [self showAlertWithTitle:@"SUCCESS" message:[NSString stringWithFormat:@"item: %@\n filePath: %@\n length: %ld\n itemRecover: %@\n",item,filePath,(long)[dataItem length],itemRecover]];
}
- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil];
    [alert show];
}

@end

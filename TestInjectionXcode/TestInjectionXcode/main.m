//
//  main.m
//  TestInjectionXcode
//
//  Created by Anyuan on 6/20/16.
//  Copyright © 2016 Anyuan. All rights reserved.
//

#import <Foundation/Foundation.h>

// From here to end of file added by Injection Plugin //

#ifdef DEBUG
static char _inMainFilePath[] = __FILE__;

//其中172.24.80.161为当前调试电脑的局域网IP
static const char *_inIPAddresses[] = {"172.24.80.161", "127.0.0.1", 0};

#define INJECTION_ENABLED
#import "/tmp/injectionforxcode/BundleInjection.h"
#endif

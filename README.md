# TestInjectionXcode
demo project for injection xcode


#### 真机联调在main.m中添加如下代码：

```objc
#ifdef DEBUG
static char _inMainFilePath[] = __FILE__;
static const char *_inIPAddresses[] = {"172.24.83.92", "127.0.0.1", 0};//172.24.83.92 替换为测试真机的IP地址

#define INJECTION_ENABLED
#import "/tmp/injectionforxcode/BundleInjection.h"
#endif
```

#include "Three20/TTTableItem.h"
#include "Three20/TTStyledNode.h"
#include "Three20/TTStyledText.h"

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTTableItem

@synthesize text = _text, caption = _caption, URL = _URL, accessoryURL = _accessoryURL;

- (id)init {
  if (self = [super init]) {
    _text = nil;
    _URL = nil;
  }
  return self;
}

- (id)initWithText:(NSString*)text {
  if (self = [self init]) {
    self.text = text;
  }
  return self;
}

- (id)initWithText:(NSString*)text URL:(NSString*)URL {
  if (self = [self init]) {
    self.text = text;
    self.URL = URL;
  }
  return self;
}

- (NSString*)description {
  return _text;
}

- (void)dealloc {
  [_text release];
  [_URL release];
  [super dealloc];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTTextTableItem
@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTGrayTextTableItem
@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTSummaryTableItem
@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTLinkTableItem
@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTButtonTableItem
@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTMoreButtonTableItem

@synthesize isLoading = _isLoading, subtitle = _subtitle;

- (id)init {
  if (self = [super init]) {
    _isLoading = NO;
    _subtitle = nil;
  }
  return self;
}

- (id)initWithText:(NSString*)text subtitle:(NSString*)subtitle {
  if (self = [super initWithText:text]) {
    self.subtitle = subtitle;
  }
  return self;
}

- (void)dealloc {
  [_subtitle release];
  [super dealloc];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTTitledTableItem

@synthesize title = _title;

- (id)init {
  if (self = [super init]) {
    _title = nil;
  }
  return self;
}

- (id)initWithTitle:(NSString*)title text:(NSString*)text {
  if (self = [super initWithText:text]) {
    self.title = title;
  }
  return self;
}

- (id)initWithTitle:(NSString*)title text:(NSString*)text URL:(NSString*)URL {
  if (self = [self initWithText:text URL:URL]) {
    self.title = title;
  }
  return self;
}

- (void)dealloc {
  [_title release];
  [super dealloc];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTSubtextTableItem

@synthesize subtext = _subtext;

- (id)init {
  if (self = [super init]) {
    _subtext = nil;
  }
  return self;
}

- (id)initWithText:(NSString*)text subtext:(NSString*)subtext {
  if (self = [super initWithText:text]) {
    self.subtext = subtext;
  }
  return self;
}

- (id)initWithText:(NSString*)text subtext:(NSString*)subtext URL:(NSString*)URL {
  if (self = [self initWithText:text URL:URL]) {
    self.subtext = subtext;
  }
  return self;
}

- (void)dealloc {
  [_subtext release];
  [super dealloc];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTImageTableItem

@synthesize defaultImage = _defaultImage, image = _image, imageStyle = _imageStyle;

- (id)init {
  if (self = [super init]) {
    _defaultImage = nil;
    _image = nil;
    _imageStyle = nil;
  }
  return self;
}

- (id)initWithText:(NSString*)text URL:(NSString*)URL image:(NSString*)icon
    defaultImage:(UIImage*)image {
  if (self = [super initWithText:text URL:URL]) {
    self.image = icon;
    self.defaultImage = image;
  }
  return self;
}

- (id)initWithText:(NSString*)text URL:(NSString*)URL image:(NSString*)image {
  return [self initWithText:text URL:URL image:image defaultImage:nil];
}

- (void)dealloc {
  [_image release];
  [_defaultImage release];
  [_imageStyle release];
  [super dealloc];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTIconTableItem

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTStatusTableItem

@synthesize sizeToFit = _sizeToFit;

- (id)init {
  if (self = [super init]) {
    _sizeToFit = NO;
  }
  return self;
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTActivityTableItem

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTErrorTableItem

@synthesize subtitle = _subtitle, image = _image;

- (id)init {
  if (self = [super init]) {
    _subtitle = nil;
    _image = nil;
  }
  return self;
}

- (id)initWithText:(NSString*)text subtitle:(NSString*)subtitle image:(UIImage*)image {
  if (self = [self initWithText:text]) {
    self.subtitle = subtitle;
    self.image = image;
  }
  return self;
}

- (void)dealloc {
  [_subtitle release];
  [_image release];
  [super dealloc];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTTextFieldTableItem

@synthesize delegate = _delegate, title = _title, placeholder = _placeholder,
  returnKeyType = _returnKeyType, keyboardType = _keyboardType,
  autocorrectionType = _autocorrectionType, autocapitalizationType = _autocapitalizationType,
  clearButtonMode = _clearButtonMode, secureTextEntry = _secureTextEntry;

- (id)init {
  if (self = [super init]) {
    _delegate = nil;
    _title = nil;
    _placeholder = nil;
    _returnKeyType = UIReturnKeyDefault;
    _keyboardType = UIKeyboardTypeDefault;
    _autocapitalizationType = UITextAutocapitalizationTypeNone;
    _autocorrectionType = UITextAutocorrectionTypeDefault;
    _clearButtonMode = UITextFieldViewModeNever;
    _secureTextEntry = NO;
  }
  return self;
}

- (id)initWithTitle:(NSString*)title {
  if (self = [self init]) {
    self.title = title;
  }
  return self;
}

- (id)initWithTitle:(NSString*)title text:(NSString*)text {
  if (self = [self initWithTitle:title]) {
    self.text = text;
  }
  return self;
}

- (void)dealloc {
  [_title release];
  [_placeholder release];
  [super dealloc];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTTextViewTableItem

@synthesize delegate = _delegate, placeholder = _placeholder;

- (id)init {
  if (self = [super init]) {
    _delegate = nil;
    _placeholder = nil;
  }
  return self;
}

- (void)dealloc {
  [_placeholder release];
  [super dealloc];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTSwitchTableItem

@synthesize on = _on;

- (id)initWithText:(NSString*)text on:(BOOL)on {
  if (self = [self initWithText:text]) {
    self.on = on;
  }
  return self;
}

- (id)init {
  if (self = [super init]) {
    _on = NO;
  }
  return self;
}

- (void)dealloc {
  [super dealloc];
}

@end

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TTStyledTextTableItem

@synthesize styledText = _styledText, margin = _margin, padding = _padding;

- (id)initWithStyledText:(TTStyledText*)styledText {
  if (self = [self init]) {
    self.styledText = styledText;
  }
  return self;
}

- (id)initWithStyledText:(TTStyledText*)styledText URL:(NSString*)URL {
  if (self = [self initWithStyledText:styledText]) {
    self.URL = URL;
  }
  return self;
}

- (id)init {
  if (self = [super init]) {
    _styledText = nil;
    _margin = UIEdgeInsetsZero;
    _padding = UIEdgeInsetsMake(10, 10, 10, 10);    
  }
  return self;
}

- (void)dealloc {
  [_styledText release];
  [super dealloc];
}

@end

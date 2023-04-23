<img src="https://raw.githubusercontent.com/mrcreatoor/MagicKit/main/Asset/banner.png">

# MagicKit

MagicKit is a lightweight and easy-to-use framework for adding stunning transition effects to your SwiftUI views.

With MagicKit, you can create beautiful and dynamic user interfaces that will captivate your users and enhance their experience.

[![MagicKit Introduction Video](https://raw.githubusercontent.com/mrcreatoor/MagicKit/main/Asset/thumb.jpeg)](https://www.youtube.com/watch?v=eV7rRSJzevA)

[![License: MIT](https://img.shields.io/badge/License-MIT-black.svg)](https://opensource.org/licenses/MIT)

## Features

- Easy to use
- Multiple built-in transition effects to choose from
- Fully customizable transition
- Lightweight and optimized for performance

## Requirements

* iOS 14+
* Xcode 12+
* Swift 5.3+

## Installation

### Swift Package Manager

You can install MagicKit using [Swift Package Manager](https://swift.org/package-manager/). To integrate MagicKit into your Xcode project, follow these steps:
 
 1. Open your project in Xcode.
 2. Click on `File` > `Swift Packages` > `Add Package Dependency...`
 3. Paste the following URL in the search bar: 
  `https://github.com/mrcreatoor/MagicKit`
 5. Click `Next` and select the version you want to use.
 6. Click `Finish`.


## Usage

Using MagicKit is easy. Simply apply the magic modifier to your SwiftUI view and specify the transition effect, duration, and show parameter:

```swift
import MagicKit

  struct ContentView: View {
       @State var isShowing = false
       
       var body: some View {
           GeometryReader { proxy in
               LinearGradient(gradient: Gradient(colors: [.orange, .pink]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
               .onTapGesture {
                  isShowing = true
                }
               .magic(transition: .pageCurl(inverted: isShowing), duration: 1, show: $isShowing) {
                   LinearGradient(gradient: Gradient(colors: [.purple, .blue]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                   .onTapGesture {
                      isShowing = false
                   }
               }
           }
       }
   }
```
## Documentation

For more detailed information on how to use MagicKit in your projects, check out our [documentation](https://mrcreatoor.github.io/MagicKit/documentation/magickit).

You can also download the documentation to your local machine as a DocC archive by clicking on this [link](https://drive.google.com/file/d/1Te1r0hP_I43j7iS4GPvHyy413vxuj1sT/view). Once downloaded, you can import it into Xcode.

To import the documentation into Xcode, follow these steps:

1. Double click on the `MagicKit.doccarchive` file to import it into Xcode.
2. Once imported, you can access the documentation from the `Help` > `Developer Documentation` menu in Xcode.

## License

MagicKit is available under the MIT license. See the [LICENCE](https://raw.githubusercontent.com/mrcreatoor/MagicKit/main/LICENSE) file for more information.

## Credits

This framework makes use of the amazing [GL-Transitions](https://github.com/gl-transitions/gl-transitions) library, which provides a collection of beautiful and highly customizable transitions. The library is created and maintained by [contributors](https://github.com/gl-transitions/gl-transitions/graphs/contributors).

We would like to thank the GL-Transitions team for their hard work and dedication in creating such a wonderful library and making it available to the community. We highly recommend checking out the original library and showing your support by giving it a star on [GitHub](https://github.com/gl-transitions/gl-transitions).
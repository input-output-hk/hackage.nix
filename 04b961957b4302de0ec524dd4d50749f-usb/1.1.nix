{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "usb";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009–2012 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/basvandijk/usb";
      url = "";
      synopsis = "Communicate with USB devices";
      description = "This library enables you to communicate with USB devices from\nuserspace. It is implemented as a high-level wrapper around\n@bindings-libusb@ which is a low-level binding to the C library:\n@libusb-1.*@.\n\nThe USB transfer functions in this library have a simple synchronous\ninterface (they block) but are implemented using the @libusb@\nasynchronous interface. They integrate with the GHC event manager\nmaking them efficient (no busy-loops) and interruptible (throwing an\nexception to the thread executing a transfer immediately cancels the\ntransfer).\n\nIf the GHC event manager is not available (because you're either not\nusing GHC or because you're on Windows) the library degrades\ngracefully to the @libusb@ synchronous implementation.\n\nThis documentation assumes knowledge of how to operate USB\ndevices from a software standpoint (descriptors, configurations,\ninterfaces, endpoints, control\\/bulk\\/interrupt\\/isochronous\ntransfers, etc). Full information can be found in the USB 2.0\nSpecification.\n\nFor an example how to use this library see the @usb-example@\npackage at:\n\n<https://github.com/basvandijk/usb-example>\n\nor the @ls-usb@ package at:\n\n<http://hackage.haskell.org/package/ls-usb>\n\nAlso see the @usb-safe@ package which wraps this package and\nprovides some strong safety guarantees for working with USB\ndevices:\n\n<http://hackage.haskell.org/package/usb-safe>\n\nFinally have a look at the @usb-iteratee@ package which\nprovides @iteratee@ enumerators for enumerating bulk, interrupt\nand isochronous endpoints:\n\n<http://hackage.haskell.org/package/usb-iteratee>\n\nBesides this API documentation the following sources might be\ninteresting:\n\n* The libusb 1.0 documentation at:\n<http://libusb.sourceforge.net/api-1.0/>\n\n* The USB 2.0 specification at:\n<http://www.usb.org/developers/docs/>\n\n* The @bindings-libusb@ documentation at:\n<http://hackage.haskell.org/package/bindings-libusb>\n\n* \\\"USB in a NutShell\\\" at:\n<http://www.beyondlogic.org/usbnutshell/usb1.htm>";
      buildType = "Custom";
    };
    components = {
      "usb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bindings-libusb)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.gt "7" && !system.isWindows) (hsPkgs.containers);
      };
    };
  }
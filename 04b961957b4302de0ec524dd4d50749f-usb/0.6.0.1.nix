{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "usb";
          version = "0.6.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009–2010 Bas van Dijk <v.dijk.bas@gmail.com>";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Communicate with USB devices";
        description = "This library allows you to communicate with USB devices from\nuserspace. It is implemented as a high-level wrapper around\n@bindings-libusb@ which is a low-level binding to the C library:\n@libusb-1.*@.\n\nThis documentation assumes knowledge of how to operate USB\ndevices from a software standpoint (descriptors, configurations,\ninterfaces, endpoints, control\\/bulk\\/interrupt\\/isochronous\ntransfers, etc). Full information can be found in the USB 2.0\nSpecification.\n\nFor an example how to use this library see the @ls-usb@ package\nat:\n\n<http://hackage.haskell.org/package/ls-usb>\n\nAlso see the @usb-safe@ package which wraps this package and\nprovides some strong safety guarantees for working with USB\ndevices:\n\n<http://hackage.haskell.org/package/usb-safe>\n\nFinally have a look at the @usb-enumerator@ package which\nprovides iteratee enumerators for enumerating bulk and interrupt\nendpoints:\n\n<http://hackage.haskell.org/package/usb-enumerator>\n\nBesides this API documentation the following sources might be\ninteresting:\n\n* The libusb 1.0 documentation at:\n<http://libusb.sourceforge.net/api-1.0/>\n\n* The USB 2.0 specification at:\n<http://www.usb.org/developers/docs/>\n\n* The @bindings-libusb@ documentation at:\n<http://hackage.haskell.org/package/bindings-libusb>\n\n* \\\"USB in a NutShell\\\" at:\n<http://www.beyondlogic.org/usbnutshell/usb1.htm>";
        buildType = "Custom";
      };
      components = {
        usb = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.bindings-libusb
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }
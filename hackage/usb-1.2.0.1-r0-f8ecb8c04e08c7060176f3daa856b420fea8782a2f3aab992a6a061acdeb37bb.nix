{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "usb"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009–2012 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "http://basvandijk.github.com/usb";
      url = "";
      synopsis = "Communicate with USB devices";
      description = "This library enables you to communicate with USB devices from\nuserspace. It is implemented as a high-level wrapper around\n@bindings-libusb@\n(<http://hackage.haskell.org/package/bindings-libusb>)\nwhich is a low-level binding to the C library:\n@libusb-1.*@ (<http://libusb.org/>) or its fork:\n@libusbx-1.*@ (<http://libusbx.org/>).\n\nThe USB transfer functions in this library have a simple synchronous\ninterface (they block) but are implemented using the @libusb@\nasynchronous interface. They integrate with the GHC event manager\nmaking them efficient (no busy-loops) and interruptible (throwing an\nexception to the thread executing a transfer immediately cancels the\ntransfer).\n\nIf the GHC event manager is not available (because you're either not\nusing GHC or because you're on Windows) the library degrades\ngracefully to the @libusb@ synchronous implementation.\n\nThis documentation assumes knowledge of how to operate USB\ndevices from a software standpoint (descriptors, configurations,\ninterfaces, endpoints, control\\/bulk\\/interrupt\\/isochronous\ntransfers, etc). Full information can be found in the\nUSB 2.0 specification (<http://www.usb.org/developers/docs/>).\n\nFor an example how to use this library see the\n@usb-example@ package (<https://github.com/basvandijk/usb-example>)\nor the @ls-usb@ package (<http://hackage.haskell.org/package/ls-usb>).\n\nBesides this API documentation the following sources might be\ninteresting:\n\n* The @libusb 1.0@ documentation (<http://libusb.sourceforge.net/api-1.0/>).\n\n* The @libusbx 1.0@ documentation (<http://libusbx.sourceforge.net/api-1.0/>).\n\n* The USB 2.0 specification (<http://www.usb.org/developers/docs/>).\n\n* The @bindings-libusb@ documentation (<http://hackage.haskell.org/package/bindings-libusb>).\n\n* \\\"USB in a NutShell\\\" (<http://www.beyondlogic.org/usbnutshell/usb1.htm>).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-libusb" or (errorHandler.buildDepError "bindings-libusb"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).gt "7" && !system.isWindows) (hsPkgs."containers" or (errorHandler.buildDepError "containers"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2.1") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      };
    }
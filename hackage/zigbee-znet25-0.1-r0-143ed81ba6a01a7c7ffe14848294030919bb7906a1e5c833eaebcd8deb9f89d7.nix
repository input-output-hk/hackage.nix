{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "zigbee-znet25";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 David Joyner";
      maintainer = "David Joyner <david@joynerhome.net>";
      author = "David Joyner <david@joynerhome.net>";
      homepage = "https://github.com/djoyner/zigbee-znet25";
      url = "";
      synopsis = "XBee ZNet 2.5 (ZigBee) wireless modem communications";
      description = "A protocol library enabling wireless communications via\nXBee/XBee-PRO (ZibBee) ZNet 2.5 RF modules.\n\nThe library performs binary encoding/decoding, on-the-wire framing,\nand error checking of control and data \"API\" frames.  In other words\nthe library expects to communicate with an XBee modem that has AP\nparameter = 2, indicating API frames with HDLC-like escape characters.\nThis mode provides for 8-bit transparent operation and is described in\nSection 6 of <ftp://ftp1.digi.com/support/documentation/90000866_C.pdf>.\n\nThe library code is 100% pure; nothing here depends on the\nIO monad and no particular modem device is assumed.  The code\ndepends on the @cereal@ package for serialization but is otherwise\npretty standard.  The test suite is based on @QuickCheck@ properties.";
      buildType = "Simple";
    };
    components = {
      "zigbee-znet25" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.MissingH)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.zigbee-znet25)
          ];
        };
      };
    };
  }
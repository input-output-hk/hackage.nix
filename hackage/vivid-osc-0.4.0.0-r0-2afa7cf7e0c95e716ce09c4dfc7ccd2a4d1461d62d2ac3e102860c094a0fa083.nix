{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vivid-osc";
        version = "0.4.0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Open Sound Control encode/decode";
      description = "Small, simple, and well-tested implementation of the Open Sound Control\nmessage format.\n\nExample usage:\n\n>>> :set -XOverloadedStrings\n>>> msg = OSC \"/foo\" [OSC_S \"bar\", OSC_I 9, OSC_F 0.25, OSC_B \"this-is-binary\"]\n>>> :t msg\n> msg :: OSC\n>>> :t encodeOSC msg\n> encodeOSC msg :: ByteString\n>>> decodeOSC (encodeOSC msg) == Right msg\n> True\n\nSee the README.md file for examples of sending and receiving with UDP";
      buildType = "Simple";
    };
    components = {
      "vivid-osc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.time)
        ];
      };
      tests = {
        "vivid-osc-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vivid-osc)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.microspec)
            (hsPkgs.time)
          ];
        };
      };
    };
  }
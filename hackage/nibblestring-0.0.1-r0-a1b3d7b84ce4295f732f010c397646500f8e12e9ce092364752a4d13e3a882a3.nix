{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nibblestring";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamshidnh@gmail.com";
      author = "Jamshid";
      homepage = "";
      url = "";
      synopsis = "Packed, strict nibble arrays with a list interface (ByteString for nibbles)";
      description = "Data.NibbleString holds an array of Nibbles (4-bit values), and provides an interface similar to that in Data.ByteString.\nAlthough similar to Bytestring, there are obvious differences.  The \"length\" of a nibblestring will be twice that of bytestring,\nunpacking a nibblestring will result in two items per byte, etc.\nData.NibbleString is intended to be imported qualified.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
        ];
      };
      tests = {
        "test-nibblestring" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }
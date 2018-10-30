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
      specVersion = "1.8";
      identifier = {
        name = "punycode";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      homepage = "https://github.com/litherum/punycode";
      url = "";
      synopsis = "Encode unicode strings to ascii forms according to RFC 3492";
      description = "Encode unicode strings to ascii forms according to RFC 3492. It is written in pure Haskell, as opposed to gnuidn's Data.Text.IDN.Punycode. Please note that Data.Encoding.BootString from the 'encoding' package also contains an implementation of the Punycode algorithm.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-punycode" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.encoding)
          ];
        };
      };
    };
  }
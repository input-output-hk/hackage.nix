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
        name = "hexstring";
        version = "0.9.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Fast and safe representation of a hex string";
      description = "Provides an interface for representing a HexString. It uses fast conversion\nfunctions to convert to-and-from String or Text formats. Internally, the\nHexString is represented by a ByteString.";
      buildType = "Simple";
    };
    components = {
      "hexstring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
        ];
      };
      tests = {
        "test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.hexstring)
          ];
        };
      };
    };
  }
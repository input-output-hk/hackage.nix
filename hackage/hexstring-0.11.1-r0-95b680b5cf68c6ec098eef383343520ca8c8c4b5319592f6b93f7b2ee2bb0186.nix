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
        version = "0.11.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Fast and safe representation of a hex string";
      description = "Provides an interface for converting any object that has a 'Binary' instance\nto and from a hexadecimal Text representation.";
      buildType = "Simple";
    };
    components = {
      "hexstring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.hexstring)
          ];
        };
      };
    };
  }
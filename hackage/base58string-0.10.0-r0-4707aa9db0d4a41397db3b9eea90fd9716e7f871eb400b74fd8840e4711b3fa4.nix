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
        name = "base58string";
        version = "0.10.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Fast and safe representation of a Base-58 string";
      description = "Provides an interface for converting any object that has a 'Binary' instance\nto and from a base-58 Text representation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.base58string)
          ];
        };
      };
    };
  }
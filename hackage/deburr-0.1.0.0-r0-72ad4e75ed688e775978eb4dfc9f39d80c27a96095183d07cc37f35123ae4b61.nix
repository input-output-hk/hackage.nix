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
        name = "deburr";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017 Chloe Kever";
      maintainer = "lolbummer@gmail.com";
      author = "Chloe Kever";
      homepage = "https://github.com/pinktrink/deburr";
      url = "";
      synopsis = "Convert Unicode characters with burrs to their ASCII counterparts.";
      description = "A small package exposing the deburr function, which converts unicode\ncharacters with burrs (umlauts, accents, etc) to their ASCII counterparts.\nThe function intelligently handles capitals and some other edge cases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "deburr-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deburr)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }
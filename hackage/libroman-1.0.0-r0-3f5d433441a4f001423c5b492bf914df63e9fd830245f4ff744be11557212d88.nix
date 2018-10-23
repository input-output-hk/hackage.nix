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
        name = "libroman";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "rnaas.ahakki.xyz";
      url = "";
      synopsis = "arabic to roman numeral conversions";
      description = "Please see README";
      buildType = "Simple";
    };
    components = {
      "libroman" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "libroman-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.word8)
            (hsPkgs.QuickCheck)
            (hsPkgs.libroman)
          ];
        };
      };
    };
  }
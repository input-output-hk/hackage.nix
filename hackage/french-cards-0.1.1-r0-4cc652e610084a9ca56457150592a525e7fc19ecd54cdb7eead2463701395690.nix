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
        name = "french-cards";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Taras Serduke";
      maintainer = "taras.serduke@gmail.com";
      author = "Taras Serduke";
      homepage = "https://github.com/tserduke/french-cards#readme";
      url = "";
      synopsis = "French Playing Cards";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "french-cards" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "card" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.french-cards)
            (hsPkgs.HUnit)
          ];
        };
        "misc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.french-cards)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }
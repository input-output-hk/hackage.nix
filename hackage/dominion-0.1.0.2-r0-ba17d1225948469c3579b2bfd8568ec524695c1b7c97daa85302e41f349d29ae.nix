{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "dominion";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bluemangroupie@gmail.com";
      author = "Aditya Bhargava";
      homepage = "http://github.com/egonschiele/dominion";
      url = "";
      synopsis = "A simulator for the board game Dominion.";
      description = "A simulator for the board game Dominion.";
      buildType = "Simple";
    };
    components = {
      "dominion" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.transformers)
          (hsPkgs.random-fu)
          (hsPkgs.random-extras)
          (hsPkgs.random)
          (hsPkgs.hscolour)
        ];
      };
      exes = {
        "dominion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.lens)
            (hsPkgs.transformers)
            (hsPkgs.random-fu)
            (hsPkgs.random-extras)
            (hsPkgs.random)
            (hsPkgs.hscolour)
          ];
        };
      };
    };
  }
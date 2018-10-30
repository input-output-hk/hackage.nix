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
        name = "dominion";
        version = "0.1.1.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.random)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "dominion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.lens)
            (hsPkgs.random)
            (hsPkgs.containers)
          ];
        };
      };
      tests = {
        "test-dominion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.lens)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.dominion)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "arrow-list";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fvisser.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "List arrows for Haskell.";
      description = "This small Haskell library provides some type class, types\nand functions to work with list arrows. List arrows represent\ncomputations that may return multiple outputs. Making\nfunctions that return lists an instance of both the\n`Category` and `Arrow` type class allow you to easily compose\nmultiple computations into one with standard building blocks.";
      buildType = "Simple";
    };
    components = {
      "arrow-list" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }
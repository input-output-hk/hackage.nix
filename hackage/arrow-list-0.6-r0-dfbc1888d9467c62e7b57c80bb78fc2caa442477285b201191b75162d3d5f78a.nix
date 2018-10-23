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
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fvisser.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "List arrows for Haskell.";
      description = "This small Haskell library provides some type class, types\nand functions to work with list (and list-like) arrows. List\narrows represent computations that may return multiple\noutputs. Making functions that return lists an instance of\nboth the `Category` and `Arrow` type class allow you to\neasily compose multiple computations into one with standard\nbuilding blocks.";
      buildType = "Simple";
    };
    components = {
      "arrow-list" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }
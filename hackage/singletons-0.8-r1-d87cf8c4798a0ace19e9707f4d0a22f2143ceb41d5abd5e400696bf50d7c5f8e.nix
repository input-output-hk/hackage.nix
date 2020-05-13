{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "singletons"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>";
      homepage = "http://www.cis.upenn.edu/~eir/packages/singletons";
      url = "";
      synopsis = "A framework for generating singleton types";
      description = "This library generates singleton types, promoted functions, and singleton\nfunctions using Template Haskell. It is useful for programmers who wish\nto use dependently typed programming techniques. The library was originally\npresented in /Dependently typed programming with singletons/, submitted\nto the Haskell Symposium, 2012.\n(<http://www.cis.upenn.edu/~eir/papers/2012/singletons/paper.pdf>)\nAs of this release date, Haddock was not able to properly process the code\nand produce documentation. Hence, all of the documentation is in the\nREADME file distributed with the package. This README is also accessible\nfrom the project home page.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      };
    }
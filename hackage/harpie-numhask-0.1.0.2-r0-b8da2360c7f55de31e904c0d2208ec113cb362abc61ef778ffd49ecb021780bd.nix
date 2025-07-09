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
      specVersion = "3.0";
      identifier = { name = "harpie-numhask"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) 2024";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/harpie-numhask#readme";
      url = "";
      synopsis = "numhask shim for harpie.";
      description = "This package provides orphans and interface into the [numhask](https://hackage.haskell.org/package/numhask) API for [harpie](https://hackage.haskell.org/package/harpie).\n\n== Usage\n\n>>> {-# LANGUAGE RebindableSyntax #-}\n>>> import NumHask.Prelude\n>>> import Harpie.Fixed as F\n>>> import Harpie.Numhask qualified as N";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."harpie" or (errorHandler.buildDepError "harpie"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
            (hsPkgs."harpie-numhask" or (errorHandler.buildDepError "harpie-numhask"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          ];
          buildable = true;
        };
      };
    };
  }
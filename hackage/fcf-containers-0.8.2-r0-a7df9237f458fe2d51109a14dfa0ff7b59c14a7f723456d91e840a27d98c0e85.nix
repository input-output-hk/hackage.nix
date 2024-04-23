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
      identifier = { name = "fcf-containers"; version = "0.8.2"; };
      license = "BSD-3-Clause";
      copyright = "gspia (c) 2020-";
      maintainer = "iahogsp@gmail.com";
      author = "gspia";
      homepage = "https://github.com/gspia/fcf-containers";
      url = "";
      synopsis = "Data structures and algorithms for first-class-families";
      description = "Package fcf-containers provides type-level functions and data structures\nthat operate on type-level computations. Specifically, we mimick the\ncontents of containers-package and show how these can be used. Everything is\nbased on the ideas given in the first-class-families -package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "orbits" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."fcf-containers" or (errorHandler.buildDepError "fcf-containers"))
          ];
          buildable = true;
        };
        "haiku" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."fcf-containers" or (errorHandler.buildDepError "fcf-containers"))
          ];
          buildable = true;
        };
        "crabcombat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."fcf-containers" or (errorHandler.buildDepError "fcf-containers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "fcf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."fcf-containers" or (errorHandler.buildDepError "fcf-containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "fcf-doctest" = {
          depends = pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.6") [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."fcf-containers" or (errorHandler.buildDepError "fcf-containers"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
          buildable = if compiler.isGhc && compiler.version.ge "8.6"
            then true
            else false;
        };
      };
    };
  }
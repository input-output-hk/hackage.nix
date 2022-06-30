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
      specVersion = "2.4";
      identifier = { name = "joy-rewrite"; version = "0.2.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "johannes.riecken@gmail.com";
      author = "Johannes Riecken";
      homepage = "https://github.com/johannes-riecken/joy-rewrite";
      url = "";
      synopsis = "Transform Joy code using conditional rewrite rules";
      description = "This package implements a rewriting function as detailed in the paper [A\nRewriting System for Joy](http://www.nsl.com/papers/rewritejoy.html) by Manfred\nvon Thun. It can be used to simplify expressions or to replace constant\nexpressions by their results.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "joy-rewrite-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."joy-rewrite" or (errorHandler.buildDepError "joy-rewrite"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
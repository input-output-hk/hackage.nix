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
      specVersion = "1.6";
      identifier = { name = "hfiar"; version = "2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2010 Fernando \"Brujo\" Benavides";
      maintainer = "greenmellon@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "http://github.com/elbrujohalcon/hfiar";
      url = "http://code.haskell.org/hfiar";
      synopsis = "Four in a Row in Haskell!!";
      description = "The classical game, implemented with wxHaskell";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."eprocess" or (errorHandler.buildDepError "eprocess"))
          (hsPkgs."eprocess" or (errorHandler.buildDepError "eprocess"))
          ];
        buildable = true;
        };
      exes = {
        "hfiar" = {
          depends = [
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            ];
          buildable = true;
          };
        };
      };
    }
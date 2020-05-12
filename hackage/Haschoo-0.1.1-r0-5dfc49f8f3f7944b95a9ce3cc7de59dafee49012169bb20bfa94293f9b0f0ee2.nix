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
      identifier = { name = "Haschoo"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matti Niemenmaa <matti.niemenmaa+haschoo@iki.fi>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/misc-projects.html#haschoo";
      url = "";
      synopsis = "Minimalist R5RS Scheme interpreter";
      description = "Haschoo is a minimalist R5RS interpreter written in Haskell for a university\ncourse.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haschoo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."list-tries" or (errorHandler.buildDepError "list-tries"))
            (hsPkgs."numbers" or (errorHandler.buildDepError "numbers"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }
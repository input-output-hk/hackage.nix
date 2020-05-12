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
      specVersion = "1.10";
      identifier = { name = "wordpass"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mjgajda/wordpass";
      url = "";
      synopsis = "Dictionary-based password generator";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wordpass" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }
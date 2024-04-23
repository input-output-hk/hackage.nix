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
      identifier = { name = "text-replace"; version = "0.1.0.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin";
      author = "Chris Martin";
      homepage = "https://github.com/chris-martin/text-replace";
      url = "";
      synopsis = "Simple text replacements from a list of search/replace pairs";
      description = "A library and a command-line application\nfor simple string replacements in text files.\n\nThe search for strings to replace is performed\nleft-to-right, preferring longer matches\nto shorter ones.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "text-replace" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text-replace" or (errorHandler.buildDepError "text-replace"))
          ];
          buildable = true;
        };
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."text-replace" or (errorHandler.buildDepError "text-replace"))
          ];
          buildable = true;
        };
      };
    };
  }
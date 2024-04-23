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
      specVersion = "1.24";
      identifier = { name = "coercible-utils"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Simon Jakobi, chessai";
      maintainer = "simon.jakobi@gmail.com";
      author = "Simon Jakobi, chessai, David Feuer";
      homepage = "https://github.com/sjakobi/coercible-utils";
      url = "";
      synopsis = "Utility functions for Coercible types";
      description = "Utility functions for Coercible types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "coercible-utils-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."coercible-utils" or (errorHandler.buildDepError "coercible-utils"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "coercible-utils-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."coercible-utils" or (errorHandler.buildDepError "coercible-utils"))
          ];
          buildable = true;
        };
      };
    };
  }
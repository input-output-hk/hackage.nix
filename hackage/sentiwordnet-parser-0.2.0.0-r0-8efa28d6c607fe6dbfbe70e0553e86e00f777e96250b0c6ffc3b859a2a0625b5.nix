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
      identifier = { name = "sentiwordnet-parser"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "k-bx@k-bx.com";
      author = "Kostiantyn Rybnikov";
      homepage = "https://github.com/k-bx/sentiwordnet-parser#readme";
      url = "";
      synopsis = "Parser for the SentiWordNet tab-separated file";
      description = "Parser for the SentiWordNet tab-separated file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."string-class" or (errorHandler.buildDepError "string-class"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }
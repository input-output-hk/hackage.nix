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
      identifier = { name = "attoparsec-iteratee"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "greg@gregorycollins.net";
      author = "Gregory Collins";
      homepage = "http://github.com/gregorycollins";
      url = "";
      synopsis = "An adapter to convert attoparsec Parsers into blazing-fast Iteratees";
      description = "An adapter to convert attoparsec Parsers into blazing-fast Iteratees";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }
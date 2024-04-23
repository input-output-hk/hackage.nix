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
      identifier = { name = "jsonl"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 UnfoldML AB, Marco Zocca";
      maintainer = "UnfoldML AB";
      author = "Marco Zocca";
      homepage = "https://github.com/unfoldml/jsonl";
      url = "";
      synopsis = "JSON Lines";
      description = "Parse and serialize the JSONL format via @aeson@'s ToJSON/FromJSON";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }
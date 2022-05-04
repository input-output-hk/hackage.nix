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
      identifier = { name = "jsonl-conduit"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 UnfoldML AB, Marco Zocca";
      maintainer = "UnfoldML AB";
      author = "Marco Zocca";
      homepage = "https://github.com/unfoldml/jsonl-conduit";
      url = "";
      synopsis = "Conduit interface to JSONL-encoded data";
      description = "Streaming interface to JSONL-encoded files and bytestrings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."jsonl" or (errorHandler.buildDepError "jsonl"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."jsonl-conduit" or (errorHandler.buildDepError "jsonl-conduit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
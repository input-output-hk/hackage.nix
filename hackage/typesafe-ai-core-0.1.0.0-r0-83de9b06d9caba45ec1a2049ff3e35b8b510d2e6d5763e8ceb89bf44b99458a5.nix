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
      identifier = { name = "typesafe-ai-core"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 byteally";
      maintainer = "magesh85@gmail.com";
      author = "Magesh B";
      homepage = "https://github.com/byteally/typesafe-sdk";
      url = "";
      synopsis = "Types, JSON codecs and typed questions for the TypeSafe AI API";
      description = "Transport-agnostic bindings to the TypeSafe System One API\n(<https://docs.typesafe.ai>): typed Noul, Choice and Score questions whose\nanswers decode to your own Haskell types, a one-to-one mirror of the\nOpenAPI schemas, and API calls as plain values.\n.\nThis package does no networking, so it can be used with servant or any\nother HTTP stack. For a ready-to-use client, depend on @typesafe-ai@.\n.\nStart with \"TypeSafe.Core\" and \"TypeSafe.Question\".\n.\nThis is a community SDK, not affiliated with or endorsed by TypeSafe AI.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."typesafe-ai-core" or (errorHandler.buildDepError "typesafe-ai-core"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }
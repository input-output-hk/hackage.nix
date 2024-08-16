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
      identifier = { name = "dns-patterns"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 Wobcom GmbH";
      maintainer = "Victor Nawothnig (dminuoso@icloud.com)";
      author = "Victor Nawothnig";
      homepage = "";
      url = "";
      synopsis = "DNS name parsing and pattern matching utilities";
      description = "Domain name pattern matching, parsing and pretty printing utilities.\nSee the modules \"Network.DNS.Pattern\" and \"Network.DNS\" for full documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."dns-patterns" or (errorHandler.buildDepError "dns-patterns"))
          ];
          buildable = true;
        };
      };
    };
  }
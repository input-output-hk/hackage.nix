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
      identifier = { name = "tasty-groundhog-converters"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott Murphy <scottmurphy09@gmail.com>";
      author = "Scott Murphy <scottmurphy09@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Tasty Tests for groundhog converters                        ";
      description = "Groundhog converters are vulnerable to serialization changes.  Round trip tests and a SQLite test framework are provided\nto help correct this.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."groundhog-converters" or (errorHandler.buildDepError "groundhog-converters"))
          (hsPkgs."groundhog" or (errorHandler.buildDepError "groundhog"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          (hsPkgs."groundhog-sqlite" or (errorHandler.buildDepError "groundhog-sqlite"))
          (hsPkgs."groundhog-th" or (errorHandler.buildDepError "groundhog-th"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }
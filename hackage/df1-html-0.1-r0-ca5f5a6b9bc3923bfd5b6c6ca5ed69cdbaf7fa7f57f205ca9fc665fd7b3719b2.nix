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
      specVersion = "1.18";
      identifier = { name = "df1-html"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2020";
      maintainer = "renλren.zone";
      author = "Melisa Laura Diaz";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Render and parse df1 logs as HTML";
      description = "Render and parse df1 logs as HTML";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."df1" or (errorHandler.buildDepError "df1"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xmlbf" or (errorHandler.buildDepError "xmlbf"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."df1" or (errorHandler.buildDepError "df1"))
            (hsPkgs."df1-html" or (errorHandler.buildDepError "df1-html"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."xmlbf" or (errorHandler.buildDepError "xmlbf"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "di-df1"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Write logs in the df1 format using the di logging framework";
      description = "Write logs in the df1 format using the di logging framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."df1" or (errorHandler.buildDepError "df1"))
          (hsPkgs."di-core" or (errorHandler.buildDepError "di-core"))
          (hsPkgs."di-monad" or (errorHandler.buildDepError "di-monad"))
          (hsPkgs."di-handle" or (errorHandler.buildDepError "di-handle"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."df1" or (errorHandler.buildDepError "df1"))
            (hsPkgs."di-core" or (errorHandler.buildDepError "di-core"))
            (hsPkgs."di-df1" or (errorHandler.buildDepError "di-df1"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
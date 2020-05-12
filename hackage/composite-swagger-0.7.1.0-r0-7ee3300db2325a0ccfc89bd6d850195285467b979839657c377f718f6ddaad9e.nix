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
      specVersion = "1.12";
      identifier = { name = "composite-swagger"; version = "0.7.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc., 2020 Vital Biosciences";
      maintainer = "oss@vitalbio.com";
      author = "Dan Fithian";
      homepage = "https://github.com/ConferOpenSource/composite#readme";
      url = "";
      synopsis = "Swagger for Vinyl records";
      description = "Integration between Swagger and Vinyl records allowing easily derivable/explicit Swagger definitions for records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."insert-ordered-containers" or (errorHandler.buildDepError "insert-ordered-containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
        buildable = true;
        };
      tests = {
        "composite-swagger-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."composite-aeson" or (errorHandler.buildDepError "composite-aeson"))
            (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
            (hsPkgs."composite-swagger" or (errorHandler.buildDepError "composite-swagger"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."insert-ordered-containers" or (errorHandler.buildDepError "insert-ordered-containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ];
          buildable = true;
          };
        };
      };
    }
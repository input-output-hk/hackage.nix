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
      identifier = { name = "vinyl-generics"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Gagandeep Bhatia";
      maintainer = "gagandeepbhatia.in@gmail.com";
      author = "Gagandeep Bhatia";
      homepage = "https://github.com/VinylRecords/vinyl-generics";
      url = "";
      synopsis = "Convert plain records to vinyl (and vice versa), generically.";
      description = "Convert plain records to @vinyl@ and vice versa, via @GHC.Generics@ and @generics-sop@/@records-sop@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."records-sop" or (errorHandler.buildDepError "records-sop"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vinyl-generics" or (errorHandler.buildDepError "vinyl-generics"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."records-sop" or (errorHandler.buildDepError "records-sop"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }
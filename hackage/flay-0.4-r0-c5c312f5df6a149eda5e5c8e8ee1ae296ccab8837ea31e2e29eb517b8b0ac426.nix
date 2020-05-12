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
      identifier = { name = "flay"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2017-2018";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/flay";
      url = "";
      synopsis = "Work generically on your datatype without knowing its shape nor its contents.";
      description = "Work generically on your datatype without knowing its shape nor its contents using\na principlied approach.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."flay" or (errorHandler.buildDepError "flay"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }
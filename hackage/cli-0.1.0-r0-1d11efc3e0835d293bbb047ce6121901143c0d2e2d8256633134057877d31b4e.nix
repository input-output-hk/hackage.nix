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
      identifier = { name = "cli"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>, Nicolas Di Prima <nicolas@di-prima.fr>";
      maintainer = "vincent@snarc.org";
      author = "Vincent Hanquez <vincent@snarc.org>, Nicolas Di Prima <nicolas@di-prima.fr>";
      homepage = "https://github.com/vincenthz/hs-cli";
      url = "";
      synopsis = "Command Line Interface";
      description = "All you need for interacting with users at the Console level\n\n* Display routines, formatting, progress bars\n\n* Options parsing\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
          ];
        buildable = true;
        };
      tests = {
        "test-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."cli" or (errorHandler.buildDepError "cli"))
            ];
          buildable = true;
          };
        };
      };
    }
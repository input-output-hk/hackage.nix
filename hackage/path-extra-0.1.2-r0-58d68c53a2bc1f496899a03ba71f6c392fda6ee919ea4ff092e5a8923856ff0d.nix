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
      identifier = { name = "path-extra"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/path-extra#readme";
      url = "";
      synopsis = "Some extensions to Chris Done's path library, for use with urlpath and attoparsec-uri.";
      description = "Please see the README on Github at <https://github.com/githubuser/localcooking-db#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "path-extra-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-extra" or (errorHandler.buildDepError "path-extra"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
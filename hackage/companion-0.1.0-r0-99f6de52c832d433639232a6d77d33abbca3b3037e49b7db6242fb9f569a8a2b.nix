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
      identifier = { name = "companion"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2023 FP Complete";
      maintainer = "Mike Pilgrem <public@pilgrem.com>";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/companion#readme";
      url = "";
      synopsis = "A Haskell library to provide companion threads.";
      description = "Please see the README on GitHub at <https://github.com/commercialhaskell/companion#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          ];
        buildable = true;
        };
      };
    }
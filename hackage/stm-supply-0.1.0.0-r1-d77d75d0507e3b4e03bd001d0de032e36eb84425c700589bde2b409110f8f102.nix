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
      identifier = { name = "stm-supply"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Joe Canero";
      maintainer = "jmc41493@gmail.com";
      author = "Joe Canero";
      homepage = "https://github.com/caneroj1/stm-supply#readme";
      url = "";
      synopsis = "STM wrapper around Control.Concurrent.Supply.";
      description = "STM wrapper around \"Control.Concurrent.Supply\" for thread-safe ID generation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."concurrent-supply" or (errorHandler.buildDepError "concurrent-supply"))
          ];
        buildable = true;
        };
      tests = {
        "stm-supply-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm-supply" or (errorHandler.buildDepError "stm-supply"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Unique" or (errorHandler.buildDepError "Unique"))
            ];
          buildable = true;
          };
        };
      };
    }
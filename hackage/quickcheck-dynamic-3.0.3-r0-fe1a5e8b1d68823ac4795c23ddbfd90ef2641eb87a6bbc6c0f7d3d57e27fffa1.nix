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
      specVersion = "2.2";
      identifier = { name = "quickcheck-dynamic"; version = "3.0.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "arnaud.bailly@iohk.io";
      author = "Ulf Norell";
      homepage = "https://github.com/input-output-hk/quickcheck-dynamic#readme";
      url = "";
      synopsis = "A library for stateful property-based testing";
      description = "Please see the README on GitHub at <https://github.com/input-output-hk/quickcheck-dynamic#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }
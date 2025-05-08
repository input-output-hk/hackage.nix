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
      specVersion = "3.0";
      identifier = { name = "targeted-quickcheck"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "pbvascon@fc.up.pt";
      author = "Pedro Vasconcelos";
      homepage = "https://github.com/pbv/targeted-quickcheck/";
      url = "";
      synopsis = "Targeted generators for QuickCheck";
      description = "Combinators to write QuickCheck generators using classical search algorithms guided by an objective function";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "targeted-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."targeted-quickcheck" or (errorHandler.buildDepError "targeted-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }
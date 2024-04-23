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
      identifier = { name = "interval-algebra"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 NoviSci";
      maintainer = "bsaul@novisci.com";
      author = "Bradley Saul";
      homepage = "https://github.com/novisci/interval-algebra#readme";
      url = "";
      synopsis = "An implementation of Allen's interval algebra for temporal logic";
      description = "Please see the README on GitHub at <https://github.com/novisci/interval-algebra>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "interval-algebra-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."interval-algebra" or (errorHandler.buildDepError "interval-algebra"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
          buildable = true;
        };
      };
    };
  }
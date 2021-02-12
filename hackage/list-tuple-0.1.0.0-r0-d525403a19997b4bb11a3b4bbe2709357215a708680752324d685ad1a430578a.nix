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
      specVersion = "1.24";
      identifier = { name = "list-tuple"; version = "0.1.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "2019 Kazuki Okamoto";
      maintainer = "kazuki.okamoto@kakkun61.com";
      author = "Kazuki Okamoto";
      homepage = "https://github.com/kakkun61/tuple#readme";
      url = "";
      synopsis = "List-like operations for tuples";
      description = "List-like operations for tuples";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OneTuple" or (errorHandler.buildDepError "OneTuple"))
          (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."Only" or (errorHandler.buildDepError "Only"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."list-tuple" or (errorHandler.buildDepError "list-tuple"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            (hsPkgs."single-tuple" or (errorHandler.buildDepError "single-tuple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
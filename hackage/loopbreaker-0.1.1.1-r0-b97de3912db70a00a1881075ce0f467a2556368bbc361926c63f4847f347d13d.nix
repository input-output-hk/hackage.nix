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
      identifier = { name = "loopbreaker"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matej Nižník,\n2019 Sandy Maguire";
      maintainer = "matten@tuta.io";
      author = "Matej Nižník,\nSandy Maguire";
      homepage = "https://github.com/polysemy-research/loopbreaker#readme";
      url = "";
      synopsis = "inline self-recursive definitions";
      description = "Please see the README file on Github for more info";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      tests = {
        "loopbreaker-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."loopbreaker" or (errorHandler.buildDepError "loopbreaker"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }
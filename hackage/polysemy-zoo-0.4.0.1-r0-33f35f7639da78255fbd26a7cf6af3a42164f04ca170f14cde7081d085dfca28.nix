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
      identifier = { name = "polysemy-zoo"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/polysemy-zoo#readme";
      url = "";
      synopsis = "Experimental, user-contributed effects and interpreters for polysemy";
      description = "Please see the README on GitHub at <https://github.com/isovector/polysemy-zoo#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
        ];
        buildable = true;
      };
      tests = {
        "polysemy-zoo-test" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-zoo" or (errorHandler.buildDepError "polysemy-zoo"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }
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
      identifier = { name = "BinderAnn"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Agustín Mista";
      maintainer = "mista@chalmers.se";
      author = "Agustín Mista";
      homepage = "https://github.com/OctopiChalmers/BinderAnn#readme";
      url = "";
      synopsis = "Source-to-source plugin for enhancing EDSLs with static annotations";
      description = "Please see the README on GitHub at <https://github.com/OctopiChalmers/BinderAnn#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test-plugin" = {
          depends = [
            (hsPkgs."BinderAnn" or (errorHandler.buildDepError "BinderAnn"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "servant-routes-golden"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright(c) Frederick Pringle 2025";
      maintainer = "freddyjepringle@gmail.com";
      author = "Frederick Pringle";
      homepage = "https://github.com/fpringle/servant-routes";
      url = "";
      synopsis = "Golden test your Servant APIs using `servant-routes`";
      description = "See the documentation of 'Servant.API.Routes.Golden'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
          (hsPkgs."servant-routes" or (errorHandler.buildDepError "servant-routes"))
        ];
        buildable = true;
      };
      tests = {
        "servant-routes-golden-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."servant-routes" or (errorHandler.buildDepError "servant-routes"))
            (hsPkgs."servant-routes-golden" or (errorHandler.buildDepError "servant-routes-golden"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }
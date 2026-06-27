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
      identifier = { name = "auto-update-unliftio"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright(c) Frederick Pringle 2026";
      maintainer = "frederick.pringle@fpringle.com";
      author = "Frederick Pringle";
      homepage = "https://github.com/fpringle/auto-update-unliftio";
      url = "";
      synopsis = "auto-update unlifted to MonadUnliftIO";
      description = "Efficiently run periodic, on-demand actions, in instances of [MonadUnliftIO](https://hackage-content.haskell.org/package/unliftio-core/docs/Control-Monad-IO-Unlift.html#t:MonadUnliftIO)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "auto-update-unliftio-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."auto-update-unliftio" or (errorHandler.buildDepError "auto-update-unliftio"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }
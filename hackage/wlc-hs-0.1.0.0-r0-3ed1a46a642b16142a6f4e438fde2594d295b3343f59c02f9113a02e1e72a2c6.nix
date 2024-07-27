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
      identifier = { name = "wlc-hs"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "moritz.kiefer@purelyfunctional.org";
      author = "Moritz Kiefer";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for the wlc library";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xkbcommon" or (errorHandler.buildDepError "xkbcommon"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        libs = [ (pkgs."wlc" or (errorHandler.sysDepError "wlc")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }
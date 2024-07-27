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
      identifier = { name = "bindings-libstemmer"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "cosmo0920.wp@gmail.com";
      author = "cosmo0920";
      homepage = "";
      url = "";
      synopsis = "Binding for libstemmer with low level binding.";
      description = "A binding for libstemmer.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
        ];
        libs = [ (pkgs."stemmer" or (errorHandler.sysDepError "stemmer")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }
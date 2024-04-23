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
      specVersion = "1.8";
      identifier = { name = "fluidsynth"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "cds@corbinsimpson.com";
      author = "Corbin Simpson";
      homepage = "https://github.com/MostAwesomeDude/hsfluidsynth";
      url = "";
      synopsis = "Haskell bindings to FluidSynth";
      description = "Simple Haskell bindings to FluidSynth.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        libs = [
          (pkgs."fluidsynth" or (errorHandler.sysDepError "fluidsynth"))
        ];
        buildable = true;
      };
    };
  }
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
      specVersion = "1.6";
      identifier = { name = "x-dsp"; version = "0.2.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jwlato@gmail.com";
      author = "John W. Lato";
      homepage = "http://jwlato.webfactional.com/haskell/x-dsp";
      url = "";
      synopsis = "A embedded DSL for manipulating DSP languages in Haskell";
      description = "Provides a tagless-final language family for manipulating\naudio programming languages (e.g. Csound, Supercollider).\nA CSound backend is provided, however the language is\ncompletely open so others can be added by users.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
          ];
        buildable = true;
        };
      };
    }
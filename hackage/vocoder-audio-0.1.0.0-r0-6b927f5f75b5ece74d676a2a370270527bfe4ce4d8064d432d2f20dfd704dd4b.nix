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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vocoder-audio"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "tilk@tilk.eu";
      author = "Marek Materzok";
      homepage = "https://github.com/tilk/vocoder";
      url = "";
      synopsis = "Phase vocoder for conduit-audio";
      description = "This module allows to easily use frequency domain processing on audio\nstreams created by @conduit-audio@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."vocoder" or (errorHandler.buildDepError "vocoder"))
          (hsPkgs."vocoder-conduit" or (errorHandler.buildDepError "vocoder-conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."conduit-audio" or (errorHandler.buildDepError "conduit-audio"))
        ];
        buildable = true;
      };
      exes = {
        "vocoder-file" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."vocoder" or (errorHandler.buildDepError "vocoder"))
            (hsPkgs."vocoder-conduit" or (errorHandler.buildDepError "vocoder-conduit"))
            (hsPkgs."vocoder-audio" or (errorHandler.buildDepError "vocoder-audio"))
            (hsPkgs."hsndfile" or (errorHandler.buildDepError "hsndfile"))
            (hsPkgs."conduit-audio" or (errorHandler.buildDepError "conduit-audio"))
            (hsPkgs."conduit-audio-sndfile" or (errorHandler.buildDepError "conduit-audio-sndfile"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
    };
  }
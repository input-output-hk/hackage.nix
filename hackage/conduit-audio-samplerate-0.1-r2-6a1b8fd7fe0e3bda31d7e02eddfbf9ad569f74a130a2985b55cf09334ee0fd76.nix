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
      identifier = { name = "conduit-audio-samplerate"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "http://github.com/mtolly/conduit-audio";
      url = "";
      synopsis = "conduit-audio interface to the libsamplerate resampling library";
      description = "A binding to the @libsamplerate@ library for use with @conduit-audio@,\nto resample audio streams.\n\nRequires the @libsamplerate@ library.\nOn Ubuntu, @apt-get install libsamplerate0-dev@;\non Mac with Homebrew, @brew install libsamplerate@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-audio" or (errorHandler.buildDepError "conduit-audio"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."samplerate" or (errorHandler.sysDepError "samplerate"))
        ];
        buildable = true;
      };
    };
  }
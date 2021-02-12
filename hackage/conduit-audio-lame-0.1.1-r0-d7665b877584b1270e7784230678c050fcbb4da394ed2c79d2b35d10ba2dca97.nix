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
      identifier = { name = "conduit-audio-lame"; version = "0.1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "miketolly@gmail.com";
      author = "Michael Tolly";
      homepage = "http://github.com/mtolly/conduit-audio";
      url = "";
      synopsis = "conduit-audio interface to the LAME MP3 library";
      description = "A simple binding to the LAME MP3 library for use with @conduit-audio@,\nto save audio streams as MP3 files.\n\nRequires the LAME library.\nOn Ubuntu, @apt-get install libmp3lame-dev@;\non Mac with Homebrew, @brew install lame@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-audio" or (errorHandler.buildDepError "conduit-audio"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        libs = [ (pkgs."mp3lame" or (errorHandler.sysDepError "mp3lame")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }
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
      identifier = { name = "hs-ffmpeg"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Vasyl Pasternak";
      maintainer = "vasylpasternak@gmail.com";
      author = "Vasyl Pasternak";
      homepage = "";
      url = "";
      synopsis = "Bindings to FFMPEG library";
      description = "Bindings to FFMPEG library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
        libs = [
          (pkgs."avformat" or (errorHandler.sysDepError "avformat"))
          (pkgs."avcodec" or (errorHandler.sysDepError "avcodec"))
          (pkgs."avutil" or (errorHandler.sysDepError "avutil"))
          (pkgs."avfilter" or (errorHandler.sysDepError "avfilter"))
          (pkgs."avdevice" or (errorHandler.sysDepError "avdevice"))
          (pkgs."swscale" or (errorHandler.sysDepError "swscale"))
          (pkgs."vorbisfile" or (errorHandler.sysDepError "vorbisfile"))
          (pkgs."vorbis" or (errorHandler.sysDepError "vorbis"))
          (pkgs."vorbisenc" or (errorHandler.sysDepError "vorbisenc"))
          (pkgs."theora" or (errorHandler.sysDepError "theora"))
          (pkgs."mp3lame" or (errorHandler.sysDepError "mp3lame"))
          (pkgs."faac" or (errorHandler.sysDepError "faac"))
          (pkgs."z" or (errorHandler.sysDepError "z"))
          (pkgs."dc1394_control" or (errorHandler.sysDepError "dc1394_control"))
          ];
        buildable = true;
        };
      };
    }
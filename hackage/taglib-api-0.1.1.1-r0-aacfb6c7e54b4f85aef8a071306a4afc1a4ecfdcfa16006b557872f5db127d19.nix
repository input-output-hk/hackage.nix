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
    flags = { usepkgconfig = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "taglib-api"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2013 Kyle Carter";
      maintainer = "kylcarte@gmail.com";
      author = "Kyle Carter";
      homepage = "";
      url = "";
      synopsis = "An FFI layer over TagLib's C bindings";
      description = "Provides functions for reading and\nwriting metadata for a variety of common\naudio formats. Currently supports both\nID3v1 and ID3v2 for MP3 files, Ogg\nVorbis comments and ID3 tags and Vorbis\ncomments in FLAC, MPC, Speex, WavPack\nTrueAudio, WAV, AIFF, MP4 and ASF files.\nIt also handles management of taglib\nfiles and strings, automatically freeing\nallocations when computation is\nfinished.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        libs = (pkgs.lib).optional (!flags.usepkgconfig) (pkgs."tag_c" or (errorHandler.sysDepError "tag_c"));
        pkgconfig = (pkgs.lib).optional (flags.usepkgconfig) (pkgconfPkgs."taglib_c" or (errorHandler.pkgConfDepError "taglib_c"));
        buildable = true;
        };
      };
    }
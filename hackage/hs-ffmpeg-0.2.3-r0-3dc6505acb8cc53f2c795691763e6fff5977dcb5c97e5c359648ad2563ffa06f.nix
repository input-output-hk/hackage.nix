{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        depends = [ (hsPkgs.base) (hsPkgs.haskell98) ];
        libs = [
          (pkgs."avformat")
          (pkgs."avcodec")
          (pkgs."avutil")
          (pkgs."avfilter")
          (pkgs."avdevice")
          (pkgs."swscale")
          (pkgs."vorbisfile")
          (pkgs."vorbis")
          (pkgs."vorbisenc")
          (pkgs."theora")
          (pkgs."mp3lame")
          (pkgs."faac")
          (pkgs."z")
          (pkgs."dc1394_control")
          ];
        };
      };
    }
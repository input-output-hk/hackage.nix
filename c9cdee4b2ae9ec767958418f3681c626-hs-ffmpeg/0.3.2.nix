{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hs-ffmpeg";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Vasyl Pasternak";
        maintainer = "vasylpasternak@gmail.com";
        author = "Vasyl Pasternak";
        homepage = "http://patch-tag.com/r/VasylPasternak/hs-ffmpeg";
        url = "";
        synopsis = "Bindings to FFMPEG library";
        description = "Bindings to FFMPEG library";
        buildType = "Simple";
      };
      components = {
        hs-ffmpeg = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.bytestring
          ];
          libs = [
            pkgs.avformat
            pkgs.avcodec
            pkgs.avutil
            pkgs.avfilter
            pkgs.avdevice
            pkgs.swscale
            pkgs.vorbisfile
            pkgs.vorbis
            pkgs.vorbisenc
            pkgs.theora
            pkgs.mp3lame
            pkgs.faac
            pkgs.z
            pkgs.dc1394_control
          ];
        };
      };
    }
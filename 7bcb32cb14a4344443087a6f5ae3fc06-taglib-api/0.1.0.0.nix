{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      usepkgconfig = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "taglib-api";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2013 Kyle Carter";
        maintainer = "kylcarte@gmail.com";
        author = "Kyle Carter";
        homepage = "";
        url = "";
        synopsis = "A convenient layer over TagLib's C bindings";
        description = "An FFI layer to TagLib's C bindings for reading\nand writing metadata for audio files.  Currently\nsupports ID3v1 and ID3v2 for MP3 files, Ogg Vorbis\ncomments and ID3 tags and Vorbis comments in FLAC,\nMPC, Speex, WavPack TrueAudio, WAV, AIFF, MP4 and\nASF files.";
        buildType = "Simple";
      };
      components = {
        taglib-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.transformers
          ];
          libs = pkgs.lib.optional (!_flags.usepkgconfig) pkgs.tag_c;
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conduit-audio-lame";
          version = "0.1.1";
        };
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
        conduit-audio-lame = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-audio
            hsPkgs.resourcet
            hsPkgs.transformers
            hsPkgs.vector
          ];
          libs = [ pkgs.mp3lame ];
        };
      };
    }
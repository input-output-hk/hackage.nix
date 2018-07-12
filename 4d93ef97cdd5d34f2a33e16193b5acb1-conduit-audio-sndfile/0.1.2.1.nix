{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "conduit-audio-sndfile";
          version = "0.1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "miketolly@gmail.com";
        author = "Michael Tolly";
        homepage = "http://github.com/mtolly/conduit-audio";
        url = "";
        synopsis = "conduit-audio interface to the libsndfile audio file library";
        description = "A wrapper around @hsndfile@ (binding to the @libsndfile@ library)\nfor use with @conduit-audio@, to load a wide variety of audio files as streams.\n\n@libsndfile@ is LGPL licensed, so you may dynamically link to it from a closed-source program.\nHowever, note that @hsndfile@ is also LGPL licensed,\nso if your program is closed-source you also must dynamically link @hsndfile@.";
        buildType = "Simple";
      };
      components = {
        "conduit-audio-sndfile" = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.conduit-audio
            hsPkgs.hsndfile
            hsPkgs.hsndfile-vector
            hsPkgs.resourcet
            hsPkgs.transformers
          ];
        };
      };
    }
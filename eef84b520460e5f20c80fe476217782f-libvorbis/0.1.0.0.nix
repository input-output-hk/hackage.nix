{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "libvorbis";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "http://blacksapphire.com/antispam/";
        author = "Stephen Blackheath";
        homepage = "https://github.com/the-real-blackh/libvorbis";
        url = "";
        synopsis = "Haskell binding for libvorbis, for decoding Ogg Vorbis audio files";
        description = "This package gives you a simple high-level API for decoding Ogg Vorbis\nfiles or streams, and isn't currently intended to be comprehensive.\nSee the HOgg package in case that's more what you want.\n\nTake a look at the tests/ directory for a minimalistic command-line player.";
        buildType = "Simple";
      };
      components = {
        "libvorbis" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cpu
          ];
        };
      };
    }
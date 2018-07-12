{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "zmidi-core";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "Read and write MIDI files.";
        description = "Minimalist library to read and write MIDI files, with\ndependencies only on ByteString and Data.Binary.\n\nChangelog:\n\nv0.1.0 to v0.2.0:\n\n* Added a top-level /shim/ module to import all the exposed\nmodules. Added a version number module\n\n";
        buildType = "Simple";
      };
      components = {
        "zmidi-core" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
      };
    }
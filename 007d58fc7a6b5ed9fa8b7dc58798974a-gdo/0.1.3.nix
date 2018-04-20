{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gdo";
          version = "0.1.3";
        };
        license = "GPL-3.0-only";
        copyright = "2016 (C) Sebastian Jordan";
        maintainer = "sebastian.jordan.mail@googlemail.com";
        author = "Sebastian Jordan";
        homepage = "";
        url = "";
        synopsis = "recursive atomic build system";
        description = "*gdo* is a build system similar to **GNU Make**. It builds files from\nsources and recipes.";
        buildType = "Simple";
      };
      components = {
        exes = {
          gdo = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.transformers
              hsPkgs.bytestring
            ];
          };
        };
      };
    }
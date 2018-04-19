{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsexif";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "etouzery@gmail.com";
        author = "Emmanuel Touzery";
        homepage = "https://github.com/emmanueltouzery/hsexif";
        url = "";
        synopsis = "EXIF handling library in pure Haskell";
        description = "The hsexif library provides functions for working with EXIF data\ncontained in JPEG files. Currently it only supports reading the data.";
        buildType = "Simple";
      };
      components = {
        hsexif = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.time
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.time
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "self-extract";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brandon Chinn <brandonchinn178@gmail.com>";
        author = "Brandon Chinn <brandonchinn178@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A Haskell library to make self-extracting executables";
        description = "A Haskell library to make self-extracting executables.";
        buildType = "Simple";
      };
      components = {
        "self-extract" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.extra
            hsPkgs.file-embed
            hsPkgs.path
            hsPkgs.path-io
            hsPkgs.unix-compat
            hsPkgs.ztar
          ];
        };
        exes = {
          "self-bundle" = {
            depends  = [
              hsPkgs.base
              hsPkgs.self-extract
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "giak";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Nicolas Mattia";
        maintainer = "nicolas@nmattia.com";
        author = "Nicolas Mattia";
        homepage = "http://github.com/nmattia/giak";
        url = "";
        synopsis = "Fuzzy finder for cabal executables";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          giak = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.async
              hsPkgs.filepath
              hsPkgs.extra
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filemanip
              hsPkgs.mtl
              hsPkgs.process
              hsPkgs.semigroups
              hsPkgs.stm
              hsPkgs.stm-chans
              hsPkgs.text
              hsPkgs.unix
              hsPkgs.wybor
            ];
          };
        };
      };
    }
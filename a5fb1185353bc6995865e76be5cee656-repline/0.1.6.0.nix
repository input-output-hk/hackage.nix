{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "repline";
          version = "0.1.6.0";
        };
        license = "MIT";
        copyright = "2014-2017 Stephen Diehl";
        maintainer = "stephen.m.diehl@gmail.com";
        author = "Stephen Diehl";
        homepage = "https://github.com/sdiehl/repline";
        url = "";
        synopsis = "Haskeline wrapper for GHCi-like REPL interfaces.";
        description = "Haskeline wrapper for GHCi-like REPL interfaces. Composable with normal mtl transformers.";
        buildType = "Simple";
      };
      components = {
        repline = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.haskeline
          ];
        };
        exes = {
          Simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.repline
              hsPkgs.process
              hsPkgs.mtl
            ];
          };
          Example = {
            depends  = [
              hsPkgs.base
              hsPkgs.repline
              hsPkgs.mtl
              hsPkgs.containers
            ];
          };
        };
      };
    }
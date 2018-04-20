{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pi-calculus";
          version = "0.0.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "will.derenzymartin@gmail.com";
        author = "Will de Renzy-Martin";
        homepage = "https://github.com/renzyq19/pi-calculus";
        url = "";
        synopsis = "Applied pi-calculus compiler";
        description = "Phi - A compiler for the applied pi-calculus. Very rough around the edges.";
        buildType = "Simple";
      };
      components = {
        exes = {
          phi = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.bytestring
              hsPkgs.io-streams
            ];
          };
        };
      };
    }
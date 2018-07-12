{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "cabalrpmdeps";
          version = "0.0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2007 Olivier Thauvin";
        maintainer = "Olivier Thauvin <nanardon@nanardon.zarb.org>";
        author = "";
        homepage = "http://nanardon.zarb.org/darcsweb/darcsweb.cgi?r=haskell-CabalRpmDeps;a=summary";
        url = "";
        synopsis = "Autogenerate rpm dependencies from cabal files";
        description = "Autogenerate rpm dependencies from cabal files";
        buildType = "Simple";
      };
      components = {
        "cabalrpmdeps" = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.filepath
          ];
        };
        exes = {
          "cabalrpmprov" = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.filepath
            ];
          };
          "cabalrpmreq" = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.filepath
            ];
          };
          "cabalrpmbr" = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.filepath
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "cabalmdvrpm";
          version = "0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2006-2007 Olivier Thauvin";
        maintainer = "Olivier Thauvin <nanardon@nanardon.zarb.org>";
        author = "";
        homepage = "http://nanardon.zarb.org/darcsweb/darcsweb.cgi?r=haskell-cabalmdvrpm;a=shortlog;topi=0";
        url = "";
        synopsis = "Create mandriva rpm from cabal package";
        description = "";
        buildType = "Custom";
      };
      components = {
        cabalmdvrpm = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.cabalrpmdeps
          ];
        };
        exes = {
          cabalmdvspec = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.cabalrpmdeps
            ];
          };
        };
      };
    }
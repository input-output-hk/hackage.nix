{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "h-booru";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "fuuzetsu@fuuzetsu.co.uk";
        author = "Mateusz Kowalczyk";
        homepage = "https://github.com/Fuuzetsu/h-booru";
        url = "";
        synopsis = "Haskell library for retrieving data from various booru image sites";
        description = "Haskell library for retrieving data from various booru image sites.\nBy providing a common interface for such sites and some parsers for\nfew existing sites, the hope is to alleviate the effort of writing\napplications which interface with them.";
        buildType = "Simple";
      };
      components = {
        h-booru = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.template-haskell
            hsPkgs.http-conduit
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.vinyl
          ];
        };
        exes = {
          h-booru = {
            depends  = [
              hsPkgs.base
              hsPkgs.hxt
              hsPkgs.template-haskell
              hsPkgs.http-conduit
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.vinyl
            ];
          };
        };
      };
    }
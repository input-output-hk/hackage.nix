{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "frame";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Adam Dunkley";
        maintainer = "\"Adam Dunkley\" <acd07u@cs.nott.ac.uk>";
        author = "Adam Dunkley";
        homepage = "";
        url = "";
        synopsis = "A simple web framework.";
        description = "A simple web framework.";
        buildType = "Simple";
      };
      components = {
        "frame" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.ghc-binary
            hsPkgs.haskell98
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.MissingH
            hsPkgs.HDBC-odbc
            hsPkgs.HDBC
            hsPkgs.haskelldb-hdbc-odbc
            hsPkgs.haskelldb-hdbc
            hsPkgs.haskelldb
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.happstack-server
            hsPkgs.happstack-fastcgi
            hsPkgs.HTTP
          ];
        };
        exes = {
          "frame-shell" = {
            depends  = [ hsPkgs.pretty ];
          };
        };
      };
    }
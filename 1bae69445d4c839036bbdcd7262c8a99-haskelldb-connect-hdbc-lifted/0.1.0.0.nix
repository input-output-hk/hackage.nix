{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskelldb-connect-hdbc-lifted";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kei Hibino <ex8k.hibino@gmail.com>";
        author = "Kei Hibino <ex8k.hibino@gmail.com>";
        homepage = "http://twitter.com/khibino";
        url = "";
        synopsis = "Bracketed HaskellDB HDBC session using lifted-base";
        description = "This package includes bracketed HDBC session function\nusing lifted-base for HaskellDB.";
        buildType = "Simple";
      };
      components = {
        haskelldb-connect-hdbc-lifted = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.haskelldb
            hsPkgs.haskelldb-connect-hdbc
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.lifted-base
          ];
        };
      };
    }
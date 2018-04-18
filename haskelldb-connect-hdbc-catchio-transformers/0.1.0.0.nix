{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskelldb-connect-hdbc-catchio-transformers";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kei Hibino <ex8k.hibino@gmail.com>";
        author = "Kei Hibino <ex8k.hibino@gmail.com>";
        homepage = "http://twitter.com/khibino";
        url = "";
        synopsis = "Bracketed HaskellDB HDBC session using MonadCatchIO-transformers";
        description = "This package includes bracketed HDBC session function\nusing MonadCatchIO-transformers for HaskellDB.";
        buildType = "Simple";
      };
      components = {
        haskelldb-connect-hdbc-catchio-transformers = {
          depends  = [
            hsPkgs.base
            hsPkgs.HDBC
            hsPkgs.haskelldb
            hsPkgs.haskelldb-connect-hdbc
            hsPkgs.transformers
            hsPkgs.MonadCatchIO-transformers
          ];
        };
      };
    }
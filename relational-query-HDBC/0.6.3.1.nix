{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "relational-query-HDBC";
          version = "0.6.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013-2017 Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
        maintainer = "ex8k.hibino@gmail.com, shohei.murayama@gmail.com, amutake.s@gmail.com, krdlab@gmail.com";
        author = "Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
        homepage = "http://khibino.github.io/haskell-relational-record/";
        url = "";
        synopsis = "HDBC instance of relational-query and typed query interface for HDBC";
        description = "This package contains the HDBC instance of relational-query and\nthe typed query interface for HDBC.\nGenerating Database table definitions and functions for\nrelational-query by reading table and index definitions\nfrom Database system catalogs.";
        buildType = "Simple";
      };
      components = {
        relational-query-HDBC = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.convertible
            hsPkgs.template-haskell
            hsPkgs.dlist
            hsPkgs.th-data-compat
            hsPkgs.names-th
            hsPkgs.persistable-record
            hsPkgs.relational-query
            hsPkgs.relational-schemas
            hsPkgs.HDBC
            hsPkgs.HDBC-session
          ];
        };
      };
    }
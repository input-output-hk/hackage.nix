{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yam-transaction-postgresql";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Daniel YU";
        maintainer = "i@icymint.me";
        author = "Daniel YU";
        homepage = "https://github.com/leptonyu/yam-transaction-postgresql#readme";
        url = "";
        synopsis = "";
        description = "Transaction Postgresql Plugin";
        buildType = "Simple";
      };
      components = {
        yam-transaction-postgresql = {
          depends  = [
            hsPkgs.base
            hsPkgs.yam-app
            hsPkgs.containers
            hsPkgs.persistent-postgresql
          ];
        };
      };
    }
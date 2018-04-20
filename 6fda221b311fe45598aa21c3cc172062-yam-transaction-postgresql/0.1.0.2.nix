{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yam-transaction-postgresql";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel YU";
        maintainer = "Daniel YU <leptonyu@gmail.com>";
        author = "Daniel YU";
        homepage = "https://github.com/leptonyu/yam/yam-transaction-postgresql#readme";
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
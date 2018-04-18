{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yam-transaction-odbc";
          version = "0.1.9";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel YU";
        maintainer = "Daniel YU <leptonyu@gmail.com>";
        author = "Daniel YU";
        homepage = "https://github.com/leptonyu/yam/tree/master/yam-transaction-odbc#readme";
        url = "";
        synopsis = "";
        description = "Transaction ODBC Plugin";
        buildType = "Simple";
      };
      components = {
        yam-transaction-odbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.yam-app
            hsPkgs.containers
            hsPkgs.persistent-odbc
          ];
        };
      };
    }
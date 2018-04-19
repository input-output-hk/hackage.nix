{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-pool";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Zalora SEA";
        maintainer = "alp@zalora.com";
        author = "Alp Mestanogullari";
        homepage = "http://github.com/zalora/servant-pool";
        url = "";
        synopsis = "Utility functions for creating servant 'Context's with \"context/connection pooling\" support";
        description = "Utility functions for creating servant 'Context's with \"context/connection pooling\" support\n\nThis package relies on the excellent <http://hackage.haskell.org/package/resource-pool resource-pool> library.";
        buildType = "Simple";
      };
      components = {
        servant-pool = {
          depends  = [
            hsPkgs.base
            hsPkgs.servant
            hsPkgs.resource-pool
            hsPkgs.time
          ];
        };
      };
    }
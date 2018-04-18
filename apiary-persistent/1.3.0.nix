{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-persistent";
          version = "1.3.0";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "persistent support for apiary web framework.";
        description = "example: <https://github.com/philopon/apiary/blob/master/examples/persistent.hs>";
        buildType = "Simple";
      };
      components = {
        apiary-persistent = {
          depends  = [
            hsPkgs.base
            hsPkgs.persistent
            hsPkgs.apiary
            hsPkgs.apiary-logger
            hsPkgs.resourcet
            hsPkgs.resource-pool
            hsPkgs.monad-logger
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.web-routing
          ];
        };
      };
    }
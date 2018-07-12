{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-websockets";
          version = "0.11.4";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "websockets support for apiary web framework.";
        description = "example: <https://github.com/philopon/apiary/blob/master/examples/websockets.hs>";
        buildType = "Simple";
      };
      components = {
        "apiary-websockets" = {
          depends  = [
            hsPkgs.base
            hsPkgs.apiary
            hsPkgs.wai-websockets
            hsPkgs.websockets
          ];
        };
      };
    }
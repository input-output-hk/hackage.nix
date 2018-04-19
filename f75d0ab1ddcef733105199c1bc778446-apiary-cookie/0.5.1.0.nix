{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-cookie";
          version = "0.5.1.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "Cookie support for apiary web framework.";
        description = "example: <https://github.com/philopon/apiary/blob/master/examples/cookie.hs>";
        buildType = "Simple";
      };
      components = {
        apiary-cookie = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.apiary
            hsPkgs.cookie
            hsPkgs.clientsession
            hsPkgs.blaze-builder
            hsPkgs.data-default-class
            hsPkgs.wai
            hsPkgs.tagged
          ];
        };
      };
    }
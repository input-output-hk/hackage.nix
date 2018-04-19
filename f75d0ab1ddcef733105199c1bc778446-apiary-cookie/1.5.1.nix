{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-cookie";
          version = "1.5.1";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "Cookie support for apiary web framework.";
        description = "example: <https://github.com/philopon/apiary/blob/master/examples/auth.hs>";
        buildType = "Simple";
      };
      components = {
        apiary-cookie = {
          depends  = [
            hsPkgs.base
            hsPkgs.apiary
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.cookie
            hsPkgs.time
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-clientsession";
          version = "0.8.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "clientsession support for apiary web framework.";
        description = "example: <https://github.com/philopon/apiary/blob/master/examples/auth.hs>";
        buildType = "Simple";
      };
      components = {
        apiary-clientsession = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.apiary
            hsPkgs.apiary-cookie
            hsPkgs.clientsession
            hsPkgs.tagged
            hsPkgs.time
            hsPkgs.data-default-class
            hsPkgs.reflection
          ];
        };
      };
    }
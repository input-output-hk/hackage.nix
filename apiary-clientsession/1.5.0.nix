{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-clientsession";
          version = "1.5.0";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "clientsession support for apiary web framework.";
        description = "examples:\n\n<https://github.com/philopon/apiary/blob/master/examples/session.hs>\n\n<https://github.com/philopon/apiary/blob/master/examples/auth.hs>";
        buildType = "Simple";
      };
      components = {
        apiary-clientsession = {
          depends  = [
            hsPkgs.base
            hsPkgs.apiary
            hsPkgs.apiary-cookie
            hsPkgs.apiary-session
            hsPkgs.clientsession
            hsPkgs.vault
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.unix-compat
            hsPkgs.data-default-class
          ];
        };
      };
    }
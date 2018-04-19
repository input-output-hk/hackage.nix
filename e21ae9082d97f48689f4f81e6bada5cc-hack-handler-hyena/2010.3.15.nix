{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack-handler-hyena";
          version = "2010.3.15";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/hack-handler-hyena";
        url = "";
        synopsis = "Hyena hack handler";
        description = "Hyena hack handler";
        buildType = "Simple";
      };
      components = {
        hack-handler-hyena = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.hack
            hsPkgs.hyena
            hsPkgs.containers
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack2-interface-wai";
          version = "2012.5.25";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/hack2-interface-wai";
        url = "";
        synopsis = "Hack2 interface of WAI";
        description = "Hack2 interface of WAI";
        buildType = "Simple";
      };
      components = {
        hack2-interface-wai = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.hack2
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.wai
            hsPkgs.http-types
            hsPkgs.case-insensitive
            hsPkgs.air
            hsPkgs.safe
          ];
        };
      };
    }
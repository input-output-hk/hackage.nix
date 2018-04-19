{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack2-handler-happstack-server";
          version = "2011.6.20";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/hack2-handler-happstack-server";
        url = "";
        synopsis = "Hack2 Happstack server handler";
        description = "Hack2 Happstack server handler";
        buildType = "Simple";
      };
      components = {
        hack2-handler-happstack-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.hack2
            hsPkgs.happstack-server
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.enumerator
          ];
        };
      };
    }
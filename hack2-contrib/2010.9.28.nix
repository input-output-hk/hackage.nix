{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack2-contrib";
          version = "2010.9.28";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "http://github.com/nfjinjing/hack2-contrib";
        url = "";
        synopsis = "Hack2 contrib";
        description = "Common middlewares and utilities that helps working with Hack2";
        buildType = "Simple";
      };
      components = {
        hack2-contrib = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.haskell98
            hsPkgs.old-locale
            hsPkgs.old-time
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.time
            hsPkgs.air
            hsPkgs.air-extra
            hsPkgs.hack2
            hsPkgs.utf8-string
            hsPkgs.ansi-wl-pprint
          ];
        };
      };
    }
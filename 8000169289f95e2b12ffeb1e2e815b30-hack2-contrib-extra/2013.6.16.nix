{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hack2-contrib-extra";
          version = "2013.6.16";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
        author = "Jinjing Wang";
        homepage = "https://github.com/nfjinjing/hack2-contrib";
        url = "";
        synopsis = "Hack2 contrib extra";
        description = "Extra middlewares and utilities for Hack2";
        buildType = "Simple";
      };
      components = {
        "hack2-contrib-extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
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
            hsPkgs.hack2-contrib
          ];
        };
      };
    }
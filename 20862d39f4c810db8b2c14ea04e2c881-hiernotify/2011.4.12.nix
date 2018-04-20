{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hiernotify";
          version = "2011.4.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paolo.veronelli@gmail.com";
        author = "Paolo Veronelli";
        homepage = "http://github.com/paolino/hiernotify";
        url = "";
        synopsis = "Notification library for a filesystem hierarchy.";
        description = "Notification library for a filesystem hierarchy.";
        buildType = "Simple";
      };
      components = {
        hiernotify = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.stm
            hsPkgs.old-time
            hsPkgs.mtl
            hsPkgs.timers-updatable
          ];
        };
      };
    }
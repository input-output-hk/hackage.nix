{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "nm";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Network Manager, binding to libnm-glib.";
        description = "A binding to libnm-glib.";
        buildType = "Simple";
      };
      components = {
        nm = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
          libs = [ pkgs.nm-glib pkgs.g ];
        };
        exes = {
          nm-demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.nm
            ];
          };
        };
      };
    }
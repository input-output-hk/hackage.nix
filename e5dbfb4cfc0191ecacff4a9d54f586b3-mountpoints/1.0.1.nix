{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mountpoints";
          version = "1.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "2012 Joey Hess";
        maintainer = "Joey Hess <id@joeyh.name>";
        author = "Joey Hess";
        homepage = "";
        url = "";
        synopsis = "list mount points";
        description = "Lists currently mounted filesystems.\n\nWorks on: Linux, BSD, Mac OS X, Android";
        buildType = "Simple";
      };
      components = {
        mountpoints = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }
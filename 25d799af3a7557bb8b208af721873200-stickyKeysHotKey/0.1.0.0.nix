{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stickyKeysHotKey";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shahn@joyridelabs.de";
        author = "Sönke Hahn";
        homepage = "";
        url = "";
        synopsis = "get and set STICKYKEYS.SKF_HOTKEYACTIVE";
        description = "Library to get and set the status of STICKYKEYS.SKF_HOTKEYACTIVE on\nwindows. This can be used to disable the sticky keys window that\nappears when pressing shift 5 times in a row.";
        buildType = "Simple";
      };
      components = {
        "stickyKeysHotKey" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
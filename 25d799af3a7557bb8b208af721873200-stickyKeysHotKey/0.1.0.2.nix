{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stickyKeysHotKey";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shahn@joyridelabs.de";
        author = "Soenke Hahn";
        homepage = "";
        url = "";
        synopsis = "get and set STICKYKEYS.SKF_HOTKEYACTIVE";
        description = "Library to get and set the status of STICKYKEYS.SKF_HOTKEYACTIVE on windows.\nThis can be used to disable the sticky keys window that appears when pressing\nshift 5 times in a row.";
        buildType = "Simple";
      };
      components = {
        stickyKeysHotKey = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
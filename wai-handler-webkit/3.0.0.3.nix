{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-handler-webkit";
          version = "3.0.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "https://github.com/yesodweb/wai/tree/master/wai-handler-webkit";
        url = "";
        synopsis = "Turn WAI applications into standalone GUIs using QtWebkit.";
        description = "API docs and the README are available at <http://www.stackage.org/package/wai-handler-webkit>.";
        buildType = "Simple";
      };
      components = {
        wai-handler-webkit = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.warp
          ];
          libs = optionals system.isWindows [
            pkgs.QtCore4
            pkgs.QtGui4
            pkgs.QtNetwork4
            pkgs.QtWebKit4
          ];
        };
      };
    }
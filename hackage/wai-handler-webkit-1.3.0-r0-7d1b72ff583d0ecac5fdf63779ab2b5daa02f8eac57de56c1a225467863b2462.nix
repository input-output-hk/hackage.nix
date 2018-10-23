{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "wai-handler-webkit";
        version = "1.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/wai";
      url = "";
      synopsis = "Turn WAI applications into standalone GUIs using QtWebkit.";
      description = "Runs any WAI application using\nthe simpleserver handler and then pops up a Webkit browser\nto view it.";
      buildType = "Simple";
    };
    components = {
      "wai-handler-webkit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.warp)
        ];
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."QtCore4")
          (pkgs."QtGui4")
          (pkgs."QtNetwork4")
          (pkgs."QtWebKit4")
        ];
        pkgconfig = pkgs.lib.optional (!system.isWindows) (pkgconfPkgs.QtWebKit);
      };
    };
  }
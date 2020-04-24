{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "wai-handler-webkit"; version = "3.0.0.3"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          ];
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."QtCore4" or ((hsPkgs.pkgs-errors).sysDepError "QtCore4"))
          (pkgs."QtGui4" or ((hsPkgs.pkgs-errors).sysDepError "QtGui4"))
          (pkgs."QtNetwork4" or ((hsPkgs.pkgs-errors).sysDepError "QtNetwork4"))
          (pkgs."QtWebKit4" or ((hsPkgs.pkgs-errors).sysDepError "QtWebKit4"))
          ];
        pkgconfig = (pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."QtWebKit" or ((hsPkgs.pkgs-errors).pkgConfDepError "QtWebKit"));
        buildable = true;
        };
      };
    }
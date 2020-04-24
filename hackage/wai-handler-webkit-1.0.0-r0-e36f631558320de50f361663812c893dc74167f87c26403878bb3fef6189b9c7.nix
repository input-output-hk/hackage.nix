{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "wai-handler-webkit"; version = "1.0.0"; };
      license = "BSD-3-Clause";
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
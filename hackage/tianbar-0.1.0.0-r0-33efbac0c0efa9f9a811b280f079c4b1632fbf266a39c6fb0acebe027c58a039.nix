{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tianbar"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "koterpillar@gmail.com";
      author = "Alexey Kotlyarov";
      homepage = "https://github.com/koterpillar/tianbar";
      url = "";
      synopsis = "A desktop bar based on WebKit";
      description = "A desktop bar using WebKit for rendering as much as possible.\nBased on Taffybar.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tianbar" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.MissingH)
            (hsPkgs.dbus)
            (hsPkgs.gtk)
            (hsPkgs.gtk-traymanager)
            (hsPkgs.webkit)
            (hsPkgs.xdg-basedir)
            (hsPkgs.process)
            ];
          pkgconfig = [ (pkgconfPkgs.gtk+-2.0) ];
          };
        };
      };
    }
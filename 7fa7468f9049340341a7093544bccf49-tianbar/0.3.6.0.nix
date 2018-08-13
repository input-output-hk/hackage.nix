{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tianbar";
        version = "0.3.6.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "a@koterpillar.com";
      author = "Alexey Kotlyarov";
      homepage = "https://github.com/koterpillar/tianbar";
      url = "";
      synopsis = "A desktop bar based on WebKit";
      description = "A desktop bar using WebKit for rendering as much as possible.\nBased on Taffybar.";
      buildType = "Simple";
    };
    components = {
      "tianbar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dbus)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad-contrib)
          (hsPkgs.utf8-string)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
        ];
      };
      exes = {
        "tianbar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.dbus)
            (hsPkgs.gtk)
            (hsPkgs.gtk-traymanager)
            (hsPkgs.MissingH)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.webkit)
            (hsPkgs.xdg-basedir)
          ];
          pkgconfig = [
            (pkgconfPkgs.gtk+-2.0)
          ];
        };
      };
    };
  }
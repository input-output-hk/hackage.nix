{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wacom-daemon";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov@iportnov.ru";
      author = "Ilya Portnov";
      homepage = "https://github.com/portnov/wacom-intuos-pro-scripts";
      url = "";
      synopsis = "Manage Wacom tablet settings profiles, including Intuos Pro ring modes";
      description = "This package provides a daemon process and a simple API to manage Wacom tablet settings profiles.\nEach profile is contains set of tablet settings: buttons mapping, touchpad configuration, etc.\nModes for Intuos Pro Express Ring are also supported.\nThe daemon detects tablet plug/unplug via udev and applies settings via xsetwacom command line\nutility.\nThe API may be used to manage tablet settings from any haskell application, for example, XMonad.\nThe package provides a daemon (hswcmd) which can manage tablet profiles for any lightweight\ndesktop environment (without KDE/GNOME). The daemon is configured via YAML config file.\nSimple utility to manage tablet settings from command line (hswcmcli) interface is also provided.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.Glob)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.udev)
          (hsPkgs.select)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.yaml)
          (hsPkgs.text)
          (hsPkgs.X11)
          (hsPkgs.libnotify)
        ];
      };
      exes = {
        "hswchd" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.Glob)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.udev)
            (hsPkgs.select)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.text)
            (hsPkgs.X11)
            (hsPkgs.libnotify)
          ];
        };
        "hswcmcli" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.Glob)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.udev)
            (hsPkgs.select)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.text)
            (hsPkgs.X11)
            (hsPkgs.libnotify)
          ];
        };
      };
    };
  }
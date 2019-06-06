{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "notifications-tray-icon"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ivan Malison";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "https://github.com/IvanMalison/notifications-tray-icon#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/IvanMalison/notifications-tray-icon#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dbus)
          (hsPkgs.gi-dbusmenu)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-glib)
          (hsPkgs.github)
          (hsPkgs.hslogger)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.process)
          (hsPkgs.regex-compat)
          (hsPkgs.status-notifier-item)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "notifications-tray-icon" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.github)
            (hsPkgs.haskeline)
            (hsPkgs.hslogger)
            (hsPkgs.notifications-tray-icon)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.tuple)
            ];
          };
        };
      };
    }
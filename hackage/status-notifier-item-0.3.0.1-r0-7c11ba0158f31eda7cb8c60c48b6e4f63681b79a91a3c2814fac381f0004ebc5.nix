{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "status-notifier-item"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ivan Malison";
      maintainer = "IvanMalison@gmail.com";
      author = "Ivan Malison";
      homepage = "https://github.com/IvanMalison/status-notifier-item#readme";
      url = "";
      synopsis = "A wrapper over the StatusNotifierItem/libappindicator dbus specification";
      description = "Please see the README on Github at <https://github.com/IvanMalison/status-notifier-item#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dbus)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.lens)
          (hsPkgs.network)
          (hsPkgs.spool)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "sni-cl-tool" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dbus)
            (hsPkgs.optparse-applicative)
            (hsPkgs.status-notifier-item)
            ];
          };
        "status-notifier-item-static" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.status-notifier-item)
            ];
          };
        "status-notifier-watcher" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dbus)
            (hsPkgs.dbus-hslogger)
            (hsPkgs.hslogger)
            (hsPkgs.optparse-applicative)
            (hsPkgs.status-notifier-item)
            ];
          };
        };
      };
    }
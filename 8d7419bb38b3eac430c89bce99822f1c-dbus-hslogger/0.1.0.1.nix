{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dbus-hslogger";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Ivan Malison";
        maintainer = "IvanMalison@gmail.com";
        author = "Ivan Malison";
        homepage = "https://github.com/IvanMalison/dbus-hslogger#readme";
        url = "";
        synopsis = "Expose a dbus server to control hslogger";
        description = "Please see the README on Github at <https://github.com/IvanMalison/dbus-hslogger#readme>";
        buildType = "Simple";
      };
      components = {
        dbus-hslogger = {
          depends  = [
            hsPkgs.base
            hsPkgs.dbus
            hsPkgs.hslogger
          ];
        };
        exes = {
          dbus-hslogger-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.dbus
              hsPkgs.dbus-hslogger
              hsPkgs.hslogger
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }
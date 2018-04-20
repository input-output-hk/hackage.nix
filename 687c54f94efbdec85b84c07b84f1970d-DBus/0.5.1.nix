{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "DBus";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexander Kojevnikov <alexander@kojevnikov.com>";
        author = "Evan Martin, David Himmelstrup";
        homepage = "https://github.com/alexkay/hdbus";
        url = "";
        synopsis = "D-Bus bindings";
        description = "Bindings for the D-Bus API.\nFor details on D-Bus, see the D-Bus wiki at:\n<http://www.freedesktop.org/wiki/Software/dbus>";
        buildType = "Configure";
      };
      components = {
        DBus = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "dbus-th-introspection";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "Ilya Portnov";
        homepage = "";
        url = "";
        synopsis = "Generate bindings for DBus calls by using DBus introspection and dbus-th";
        description = "This package is aimed to simplify writing bindings for DBus interfaces by using\nDBus introspection and dbus-th package.";
        buildType = "Simple";
      };
      components = {
        dbus-th-introspection = {
          depends  = [
            hsPkgs.base
            hsPkgs.dbus-th
            hsPkgs.template-haskell
            hsPkgs.dbus
            hsPkgs.containers
          ];
        };
        exes = {
          dbus-introspect-hs = {
            depends  = [
              hsPkgs.base
              hsPkgs.dbus-th
              hsPkgs.template-haskell
              hsPkgs.dbus
              hsPkgs.containers
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "unix-compat";
          version = "0.1";
        };
        license = "BSD-4-Clause";
        copyright = "";
        maintainer = "bjorn@bringert.net";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Portable POSIX-compatibility layer.";
        description = "This package provides portable implementations of parts\nof the unix package. This package re-exports the unix\npackage when available. When it isn't available,\nportable implementations are used.";
        buildType = "Custom";
      };
      components = {
        unix-compat = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
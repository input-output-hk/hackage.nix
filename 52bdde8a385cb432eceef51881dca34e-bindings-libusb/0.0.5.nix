{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-libusb";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maurício C. Antunes";
        author = "Maurício C. Antunes";
        homepage = "http://bitbucket.org/mauricio/bindings";
        url = "";
        synopsis = "Check bindings-common package for directions.";
        description = "";
        buildType = "Simple";
      };
      components = {
        bindings-libusb = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-posix
            hsPkgs.bindings-common
          ];
        };
      };
    }
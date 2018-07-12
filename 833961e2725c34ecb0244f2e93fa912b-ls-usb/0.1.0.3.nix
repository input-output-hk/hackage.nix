{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ls-usb";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Roel van Dijk, Bas van Dijk";
        maintainer = "vandijk.roel@gmail.com";
        author = "Roel van Dijk, Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "List USB devices";
        description = "A small utility that lists USB devices connected to your system.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "ls-usb" = {
            depends  = [
              hsPkgs.ansi-wl-pprint
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.usb
              hsPkgs.usb-safe
              hsPkgs.usb-id-database
            ];
          };
        };
      };
    }
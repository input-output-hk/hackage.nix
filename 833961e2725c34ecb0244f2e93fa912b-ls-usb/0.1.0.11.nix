{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ls-usb";
          version = "0.1.0.11";
        };
        license = "BSD-3-Clause";
        copyright = "2009–2012 Roel van Dijk <vandijk.roel@gmail.com>";
        maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
        author = "Roel van Dijk <vandijk.roel@gmail.com>";
        homepage = "https://github.com/roelvandijk/ls-usb";
        url = "";
        synopsis = "List USB devices";
        description = "A small utility for displaying information about USB devices\nconnected to your system.";
        buildType = "Simple";
      };
      components = {
        exes = {
          ls-usb = {
            depends  = [
              hsPkgs.ansi-wl-pprint
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.text
              hsPkgs.cmdargs
              hsPkgs.usb
              hsPkgs.usb-id-database
            ];
          };
        };
      };
    }
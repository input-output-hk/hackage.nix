{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gpio";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Tyler Olson";
        maintainer = "tydotg@gmail.com";
        author = "Tyler Olson";
        homepage = "http://github.com/tgolson/gpio";
        url = "";
        synopsis = "Haskell GPIO interface, designed specifically for the RaspberryPi.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "gpio" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.optparse-generic
            hsPkgs.safe
          ];
        };
        exes = {
          "gpio" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.monad-control
              hsPkgs.optparse-generic
              hsPkgs.safe
              hsPkgs.gpio
            ];
          };
        };
      };
    }
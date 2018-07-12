{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nagios-check";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "2014 Sharif Olorin";
        maintainer = "sio@tesser.org";
        author = "Sharif Olorin";
        homepage = "https://github.com/fractalcat/haskell-nagios-check";
        url = "";
        synopsis = "Package for writing monitoring plugins";
        description = "Implements Nagios plugin development guidelines\nwithin a Haskell framework for writing Nagios\nchecks.";
        buildType = "Simple";
      };
      components = {
        "nagios-check" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.bifunctors
            hsPkgs.exceptions
            hsPkgs.nagios-perfdata
          ];
        };
        tests = {
          "nagios-check-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.nagios-check
            ];
          };
        };
      };
    }
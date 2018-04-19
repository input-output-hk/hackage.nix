{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-hlint = true;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "mellon-gpio";
          version = "0.8.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2017, Quixoftic, LLC";
        maintainer = "Drew Hess <dhess-src@quixoftic.com>";
        author = "Drew Hess <dhess-src@quixoftic.com>";
        homepage = "https://github.com/quixoftic/mellon/";
        url = "";
        synopsis = "GPIO support for mellon";
        description = "@mellon-gpio@ provides a GPIO-driven @mellon-core@ @Device@.\nCurrently, it provides support for Linux @sysfs@-based GPIO.";
        buildType = "Simple";
      };
      components = {
        mellon-gpio = {
          depends  = [
            hsPkgs.base
            hsPkgs.hpio
            hsPkgs.mellon-core
          ];
        };
        tests = {
          hlint = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }
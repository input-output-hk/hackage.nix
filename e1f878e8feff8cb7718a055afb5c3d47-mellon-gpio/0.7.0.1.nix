{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-hlint = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mellon-gpio";
          version = "0.7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Drew Hess";
        maintainer = "Drew Hess <src@drewhess.com>";
        author = "Drew Hess <src@drewhess.com>";
        homepage = "https://github.com/dhess/mellon/";
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
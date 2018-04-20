{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "human-readable-duration";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yann.esposito@gmail.com";
        author = "Yann Esposito";
        homepage = "http://github.com/yogsototh/human-readable-duration#readme";
        url = "";
        synopsis = "Provide duration helper";
        description = "This is a minimal Haskell library to display duration.\n\n> let duration = 2 * ms + 3 * oneSecond + 2 * minute + 33*day + 2*year\n> humanReadableDuration duration\n> -- will return: \"2 years 33 days 2 min 3s 2ms\"\n> getYears duration\n> -- will return 2\n> getDays duration\n> -- will return 763\n> getMs duration\n> -- will return 65923323002";
        buildType = "Simple";
      };
      components = {
        human-readable-duration = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          human-readable-duration-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.human-readable-duration
              hsPkgs.doctest
              hsPkgs.time
            ];
          };
        };
        benchmarks = {
          hrd-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.human-readable-duration
            ];
          };
        };
      };
    }
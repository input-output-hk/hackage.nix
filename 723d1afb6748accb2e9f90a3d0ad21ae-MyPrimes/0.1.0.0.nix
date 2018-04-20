{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MyPrimes";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "contact@afonsomatos.com";
        author = "Afonso Matos";
        homepage = "http://afonso.xyz";
        url = "";
        synopsis = "Generate all primes";
        description = "";
        buildType = "Simple";
      };
      components = {
        MyPrimes = {
          depends  = [
            hsPkgs.containers
            hsPkgs.base
          ];
        };
        exes = {
          PrimesList = {
            depends  = [
              hsPkgs.containers
              hsPkgs.MyPrimes
              hsPkgs.base
            ];
          };
        };
        benchmarks = {
          bench-foo = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
            ];
          };
        };
      };
    }
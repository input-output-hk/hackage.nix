{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bank-holidays-england";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) David Turner 2014";
        maintainer = "dave.c.turner@gmail.com";
        author = "David Turner";
        homepage = "https://bitbucket.org/davecturner/bank-holidays-england";
        url = "";
        synopsis = "Calculation of bank holidays in England and Wales";
        description = "Calculation of bank holidays in England and Wales, using the rules that have\nbeen in place since 1978, and including all exceptions to the rules in the\nyears 1995 to 2014.";
        buildType = "Simple";
      };
      components = {
        bank-holidays-england = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bank-holidays-england
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.time
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "haslo";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2011 Bartosz Wojcik";
        maintainer = "Bartosz Wojcik <bartoszmwojcik@gmail.com>";
        author = "Bartosz Wojcik";
        homepage = "";
        url = "";
        synopsis = "Loan calculator engine.";
        description = "Loan calculator engine implementing rules mentioned in paper \"Haskell Loan Library\".\nSee more here: https://github.com/bartoszw/haslo/blob/master/haslo.pdf.\nAcronym from Haskell Loan.";
        buildType = "Simple";
      };
      components = {
        "haslo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
            hsPkgs.wtk
            hsPkgs.mtl
          ];
        };
        exes = {
          "hasloQC" = {
            depends  = [
              hsPkgs.old-time
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.wtk
            ];
          };
          "hasloSample" = {
            depends  = [
              hsPkgs.old-time
              hsPkgs.QuickCheck
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.wtk
            ];
          };
        };
      };
    }
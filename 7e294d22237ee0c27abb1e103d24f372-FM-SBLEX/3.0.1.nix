{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "FM-SBLEX";
          version = "3.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Lars Borin, Markus Forsberg, Aarne Ranta, Free software under GNU General Public License (GPL).";
        maintainer = "Lars Borin <lars.borin@gu.se>, Markus Forsberg <markus.forsberg@gu.se>, Aarne Ranta <aarne@chalmers.se>";
        author = "";
        homepage = "http://spraakbanken.gu.se/eng/research/swefn/fm-sblex";
        url = "";
        synopsis = "A set of computational morphology tools for Swedish diachronic lexicons.";
        description = "A set of computational morphology tools for Swedish diachronic lexicons. Retrieve up-to-date dictionaries from the homepage.";
        buildType = "Simple";
      };
      components = {
        exes = {
          saldo = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ];
          };
          dalin = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ];
          };
          fsv = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ];
          };
        };
      };
    }
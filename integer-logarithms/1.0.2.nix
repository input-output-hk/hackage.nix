{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      integer-gmp = true;
      check-bounds = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "integer-logarithms";
          version = "1.0.2";
        };
        license = "MIT";
        copyright = "(c) 2011 Daniel Fischer";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Daniel Fischer";
        homepage = "https://github.com/phadej/integer-logarithms";
        url = "";
        synopsis = "Integer logarithms.";
        description = "\"Math.NumberTheory.Logarithms\" and \"Math.NumberTheory.Powers.Integer\"\nfrom the arithmoi package.\n\nAlso provides \"GHC.Integer.Logarithms.Compat\" and\n\"Math.NumberTheory.Power.Natural\" modules, as well as some\nadditional functions in migrated modules.";
        buildType = "Simple";
      };
      components = {
        integer-logarithms = {
          depends  = ([
            hsPkgs.base
            hsPkgs.array
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.nats) ++ (if _flags.integer-gmp
            then [ hsPkgs.integer-gmp ]
            else [ hsPkgs.integer-simple ]);
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.integer-logarithms
              hsPkgs.tasty
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.nats;
          };
        };
      };
    }
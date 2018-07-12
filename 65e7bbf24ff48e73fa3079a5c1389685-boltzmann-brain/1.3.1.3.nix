{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "boltzmann-brain";
          version = "1.3.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Maciej Bendkowski";
        maintainer = "maciej.bendkowski@tcs.uj.edu.pl";
        author = "Maciej Bendkowski";
        homepage = "https://github.com/maciej-bendkowski/boltzmann-brain";
        url = "";
        synopsis = "Boltzmann sampler compiler for combinatorial systems.";
        description = "Boltzmann Brain is a combinatorial system sampler compiler.\nUsing an easy and intuitive specification input representing a\ncombinatorial system, Boltzmann Brain constructs a working,\nself-contained module implementing a dedicated singular,\nrejection-based Boltzmann sampler with some additional\ncontrol over the constructor frequencies in the generated structures.";
        buildType = "Simple";
      };
      components = {
        "boltzmann-brain" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.megaparsec
            hsPkgs.array
            hsPkgs.haskell-src-exts
            hsPkgs.mtl
            hsPkgs.multiset
            hsPkgs.hmatrix
            hsPkgs.process
          ];
        };
        exes = {
          "bb" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmatrix
              hsPkgs.containers
              hsPkgs.boltzmann-brain
            ];
          };
        };
      };
    }
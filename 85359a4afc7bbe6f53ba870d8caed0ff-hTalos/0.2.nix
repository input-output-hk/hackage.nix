{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hTalos";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright by MPIBPC, Michal J. Gajda '2013";
        maintainer = "mjgajda@googlemail.com";
        author = "Michal J. Gajda";
        homepage = "https://github.com/mgajda/hTalos";
        url = "http://hackage.haskell.org/package/hTalos";
        synopsis = "Parser, print and manipulate structures in PDB file format.";
        description = "Protein Data Bank file format is a most popular format for holding biomolecule data. This is a very fast parser (below 7s for the largest entry in PDB - 1HTQ which is over 70MB - as compared with 11s of RASMOL 2.7.5, or 2m15s of BioPython with Python 2.6 interpreter.) It is aimed to not only deliver event-based interface, but also a high-level data structure for manipulating data in spirit of BioPython's PDB parser.";
        buildType = "Simple";
      };
      components = {
        hTalos = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          test_PhiPsi = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.hTalos
            ];
          };
        };
      };
    }
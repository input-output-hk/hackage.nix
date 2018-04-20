{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hPDB-examples";
          version = "0.99";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright by Michal J. Gajda '2009-'2012";
        maintainer = "mjgajda@googlemail.com";
        author = "Michal J. Gajda";
        homepage = "https://github.com/mgajda/hpdb";
        url = "http://hackage.haskell.org/package/hPDB";
        synopsis = "Parser, print and manipulate structures in PDB file format.";
        description = "Protein Data Bank file format is a most popular format for holding biomolecule data. This is a very fast parser (below 7s for the largest entry in PDB - 1HTQ which is over 70MB - as compared with 11s of RASMOL 2.7.5, or 2m15s of BioPython with Python 2.6 interpreter.) It is aimed to not only deliver event-based interface, but also a high-level data structure for manipulating data in spirit of BioPython's PDB parser.";
        buildType = "Simple";
      };
      components = {
        exes = {
          PDB2Fasta = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.hPDB
            ];
          };
          ShiftToCenter = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.hPDB
              hsPkgs.bytestring
            ];
          };
          CleanPDB = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.hPDB
            ];
          };
          SplitModels = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.hPDB
              hsPkgs.bytestring
            ];
          };
          CanonicalAxes = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.hPDB
            ];
          };
          PrintEvents = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.hPDB
            ];
          };
          PrintStructureObject = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.hPDB
            ];
          };
          Rg = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.hPDB
            ];
          };
          StericClashCheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.Octree
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.hPDB
            ];
          };
          Viewer = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.vector
              hsPkgs.AC-Vector
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.OpenGL
              hsPkgs.GLUT
              hsPkgs.hPDB
              hsPkgs.bytestring
            ];
          };
        };
      };
    }
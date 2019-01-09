{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hPDB-examples"; version = "0.9999"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2009-'2013";
      maintainer = "mjgajda@googlemail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/hpdb-examples";
      url = "http://hackage.haskell.org/package/hPDB";
      synopsis = "Examples for hPDB library";
      description = "Examples for handling Protein Data Bank file format.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "PDB2Fasta" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.hPDB)
            (hsPkgs.iterable)
            ];
          };
        "ShiftToCenter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.hPDB)
            (hsPkgs.bytestring)
            (hsPkgs.iterable)
            ];
          };
        "CleanPDB" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.hPDB)
            (hsPkgs.iterable)
            ];
          };
        "SplitModels" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.hPDB)
            (hsPkgs.bytestring)
            (hsPkgs.iterable)
            ];
          };
        "CanonicalAxes" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.hPDB)
            (hsPkgs.iterable)
            ];
          };
        "PrintEvents" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.hPDB)
            (hsPkgs.iterable)
            ];
          };
        "PrintStructureObject" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.hPDB)
            (hsPkgs.iterable)
            ];
          };
        "Rg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.hPDB)
            (hsPkgs.iterable)
            ];
          };
        "StericClashCheck" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.Octree)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.hPDB)
            (hsPkgs.iterable)
            ];
          };
        "Viewer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.vector)
            (hsPkgs.AC-Vector)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
            (hsPkgs.hPDB)
            (hsPkgs.bytestring)
            (hsPkgs.iterable)
            ];
          };
        };
      };
    }
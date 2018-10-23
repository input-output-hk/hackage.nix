{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      have-mmap = true;
      have-sse2 = true;
      have-text-format = true;
      old-bytestring = false;
      old-zlib = false;
      old-vector = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hPDB";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2009-'2013";
      maintainer = "mjgajda@googlemail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/hpdb";
      url = "http://hackage.haskell.org/package/hPDB";
      synopsis = "Protein Databank file format library";
      description = "Protein Data Bank file format is a most popular format for holding biomolecule data.\n\nThis is a very fast parser: below 7s for the largest entry in PDB - 1HTQ which is over 70MB - as compared with 11s of RASMOL 2.7.5, or 2m15s of BioPython with Python 2.6 interpreter.\n\nIt is aimed to not only deliver event-based interface, but also a high-level data structure for manipulating data in spirit of BioPython's PDB parser.";
      buildType = "Simple";
    };
    components = {
      "hPDB" = {
        depends  = ([
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
          (hsPkgs.iterable)
          (hsPkgs.parallel)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
        ] ++ pkgs.lib.optional (flags.have-mmap) (hsPkgs.mmap)) ++ pkgs.lib.optional (flags.have-text-format) (hsPkgs.text-format);
      };
    };
  }
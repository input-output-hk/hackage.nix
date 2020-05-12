{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { have-mmap = true; have-sse2 = true; have-text-format = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hPDB"; version = "1.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2009-'2013";
      maintainer = "mjgajda@googlemail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/BioHaskell/hPDB";
      url = "http://hackage.haskell.org/package/hPDB";
      synopsis = "Protein Databank file format library";
      description = "Protein Data Bank file format is a most popular format for holding biological macromolecular data.\n\nThis is a very fast sequential parser:\n\n* below 7s for the largest entry in PDB - 1HTQ which is over 70MB - as compared with\n\n* 11s of RASMOL 2.7.5,\n\n* or 2m15s of BioPython with Python 2.6 interpreter.\n\nIn its parallel incarnation it is most probably the fastest parser for PDB format.\n\nIt is aimed to not only deliver event-based interface, but also a high-level data\nstructure for manipulating data in spirit of BioPython's PDB parser.\n\n<http://dx.doi.org/10.1186/1756-0500-6-483 hPDB - Haskell library for processing atomic biomolecular structures in Protein Data Bank format - Michal Jan Gajda. BMC Research Notes 2013, 6:483.>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."iterable" or (errorHandler.buildDepError "iterable"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."Octree" or (errorHandler.buildDepError "Octree"))
          ] ++ (pkgs.lib).optional (flags.have-mmap) (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.have-text-format) (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"));
        buildable = true;
        };
      };
    }
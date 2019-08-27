let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { have-mmap = true; have-sse2 = true; have-text-format = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hPDB"; version = "1.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2009-'2015";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."AC-Vector" or (buildDepError "AC-Vector"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."iterable" or (buildDepError "iterable"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."Octree" or (buildDepError "Octree"))
          ] ++ (pkgs.lib).optional (flags.have-mmap) (hsPkgs."mmap" or (buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.have-text-format) (hsPkgs."text-format" or (buildDepError "text-format"));
        };
      };
    }
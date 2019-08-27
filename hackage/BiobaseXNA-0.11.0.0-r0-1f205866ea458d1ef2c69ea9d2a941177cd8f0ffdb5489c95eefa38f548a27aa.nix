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
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "BiobaseXNA"; version = "0.11.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011 - 2019";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen";
      homepage = "https://github.com/choener/BiobaseXNA";
      url = "";
      synopsis = "Efficient RNA/DNA/Protein Primary/Secondary Structure";
      description = "This is a base library for bioinformatics with emphasis on RNA\nand DNA primary structure as well as amino acid sequences.\n\nProvided are efficient encodings for short (limited by the\namount of RAM) sequences, as required by RNA folding tools.\nExtended RNA secondary structures can be represented as well.\n\nContains data from:\n\n@\nFrequency and isostericity of RNA base pairs\nJesse Stombaugh, Craig L. Zirbel, Eric Westhof, and Neocles B. Leontis\nNucl. Acids Res. (2009)\n@\n\n<http://dx.crossref.org/10.1093%2Fnar%2Fgkp011>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytes" or (buildDepError "bytes"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cereal-vector" or (buildDepError "cereal-vector"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."csv" or (buildDepError "csv"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
          (hsPkgs."vector-th-unbox" or (buildDepError "vector-th-unbox"))
          (hsPkgs."bimaps" or (buildDepError "bimaps"))
          (hsPkgs."BiobaseENA" or (buildDepError "BiobaseENA"))
          (hsPkgs."BiobaseTypes" or (buildDepError "BiobaseTypes"))
          (hsPkgs."ForestStructures" or (buildDepError "ForestStructures"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          ];
        };
      exes = {
        "SubOptDistance" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cereal-vector" or (buildDepError "cereal-vector"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tuple" or (buildDepError "tuple"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
            (hsPkgs."vector-th-unbox" or (buildDepError "vector-th-unbox"))
            (hsPkgs."bimaps" or (buildDepError "bimaps"))
            (hsPkgs."BiobaseENA" or (buildDepError "BiobaseENA"))
            (hsPkgs."BiobaseTypes" or (buildDepError "BiobaseTypes"))
            (hsPkgs."ForestStructures" or (buildDepError "ForestStructures"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cereal-vector" or (buildDepError "cereal-vector"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."csv" or (buildDepError "csv"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."tuple" or (buildDepError "tuple"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
            (hsPkgs."vector-th-unbox" or (buildDepError "vector-th-unbox"))
            (hsPkgs."bimaps" or (buildDepError "bimaps"))
            (hsPkgs."BiobaseENA" or (buildDepError "BiobaseENA"))
            (hsPkgs."BiobaseTypes" or (buildDepError "BiobaseTypes"))
            (hsPkgs."ForestStructures" or (buildDepError "ForestStructures"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
            ];
          };
        };
      };
    }
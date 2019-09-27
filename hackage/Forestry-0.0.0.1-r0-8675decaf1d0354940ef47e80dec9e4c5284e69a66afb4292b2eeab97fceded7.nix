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
    flags = { rnaforestry = false; };
    package = {
      specVersion = "1.10.0";
      identifier = { name = "Forestry"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, Sarah Berkemer, 2017";
      homepage = "https://github.com/choener/Forestry";
      url = "";
      synopsis = "Comparison of trees and forests.";
      description = "Wikipedia on forestry: \"the science and craft of creating,\nmanaging, using, conserving, and repairing forests and\nassociated resources.\"\n\nThis is a modest starting point and provides just:\n\n* forest alignments\n* tree alignments\n\nBuild this library and executable with GHC-8.0.2\n\nTo enable @RNAforestry@, use @cabal new-build -frnaforestry@ or\n@cabal new-configure -w compiler-path -frnaforestry && cabal\nnew-build@. We suggest using @cabal@ with the nix-style local\nbuild options.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."log-domain" or (buildDepError "log-domain"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."ADPfusion" or (buildDepError "ADPfusion"))
          (hsPkgs."ADPfusionForest" or (buildDepError "ADPfusionForest"))
          (hsPkgs."BiobaseNewick" or (buildDepError "BiobaseNewick"))
          (hsPkgs."BiobaseTypes" or (buildDepError "BiobaseTypes"))
          (hsPkgs."ForestStructures" or (buildDepError "ForestStructures"))
          (hsPkgs."FormalGrammars" or (buildDepError "FormalGrammars"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          (hsPkgs."PrimitiveArray-Pretty" or (buildDepError "PrimitiveArray-Pretty"))
          ];
        buildable = true;
        };
      exes = {
        "RNAforestry" = {
          depends = (pkgs.lib).optionals (flags.rnaforestry) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."log-domain" or (buildDepError "log-domain"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."BiobaseNewick" or (buildDepError "BiobaseNewick"))
            (hsPkgs."ForestStructures" or (buildDepError "ForestStructures"))
            (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
            (hsPkgs."PrimitiveArray-Pretty" or (buildDepError "PrimitiveArray-Pretty"))
            (hsPkgs."Forestry" or (buildDepError "Forestry"))
            (hsPkgs."ViennaRNA-extras" or (buildDepError "ViennaRNA-extras"))
            (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
            (hsPkgs."BiobaseTypes" or (buildDepError "BiobaseTypes"))
            ];
          buildable = if flags.rnaforestry then true else false;
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."Forestry" or (buildDepError "Forestry"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."Forestry" or (buildDepError "Forestry"))
            ];
          buildable = true;
          };
        };
      };
    }
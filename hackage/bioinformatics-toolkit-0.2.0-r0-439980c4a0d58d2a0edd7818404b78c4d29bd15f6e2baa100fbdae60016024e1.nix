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
      specVersion = "1.18";
      identifier = { name = "bioinformatics-toolkit"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2014 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "A collection of bioinformatics tools";
      description = "A collection of bioinformatics tools";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
          (hsPkgs."clustering" or (buildDepError "clustering"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."hexpat" or (buildDepError "hexpat"))
          (hsPkgs."matrices" or (buildDepError "matrices"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."palette" or (buildDepError "palette"))
          (hsPkgs."samtools" or (buildDepError "samtools"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          (hsPkgs."word8" or (buildDepError "word8"))
          (hsPkgs."IntervalMap" or (buildDepError "IntervalMap"))
          ];
        };
      exes = {
        "mkindex" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bioinformatics-toolkit" or (buildDepError "bioinformatics-toolkit"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "viewSeq" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bioinformatics-toolkit" or (buildDepError "bioinformatics-toolkit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "mergeMotifs" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bioinformatics-toolkit" or (buildDepError "bioinformatics-toolkit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."clustering" or (buildDepError "clustering"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."bioinformatics-toolkit" or (buildDepError "bioinformatics-toolkit"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bioinformatics-toolkit" or (buildDepError "bioinformatics-toolkit"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."clustering" or (buildDepError "clustering"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }
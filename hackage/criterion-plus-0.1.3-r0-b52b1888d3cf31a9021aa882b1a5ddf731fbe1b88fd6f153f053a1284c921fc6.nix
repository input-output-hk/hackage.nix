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
      specVersion = "1.10";
      identifier = { name = "criterion-plus"; version = "0.1.3"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/criterion-plus";
      url = "";
      synopsis = "Enhancement of the \"criterion\" benchmarking library";
      description = "A dome library over \\\"criterion\\\",\nwhich enhances it with the following features:\n\n* Support for partial measuring, e.g., exclusion of the setup/teardown phases.\n\n* Generation of multiple unrelated comparison reports.\n\n* A flexible monadic API,\nwhich allows you to benchmark monad transformers and\ncontrol which parts you actually want measured.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."criterion" or (buildDepError "criterion"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."th-printf" or (buildDepError "th-printf"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."loch-th" or (buildDepError "loch-th"))
          (hsPkgs."placeholders" or (buildDepError "placeholders"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      tests = {
        "internal-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."HTF" or (buildDepError "HTF"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."th-printf" or (buildDepError "th-printf"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."loch-th" or (buildDepError "loch-th"))
            (hsPkgs."placeholders" or (buildDepError "placeholders"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }
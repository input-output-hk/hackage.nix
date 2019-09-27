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
      identifier = { name = "streaming-concurrency"; version = "0.3.1.1"; };
      license = "MIT";
      copyright = "Ivan Lazar Miljenovic";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Concurrency support for the streaming ecosystem";
      description = "There are two primary higher-level use-cases for this library:\n\n1. Merge multiple @Stream@s together.\n\n2. A conceptual @Stream@-based equivalent to @parMap@ (albeit\nutilising concurrency rather than true parallelism).\n\nHowever, low-level functions are also exposed so you can construct\nyour own methods of concurrently using @Stream@s (and there are also\nnon-@Stream@-specific functions if you wish to use it with other data\ntypes).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."streaming-with" or (buildDepError "streaming-with"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "merging" = {
          depends = [
            (hsPkgs."streaming-concurrency" or (buildDepError "streaming-concurrency"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "mapping" = {
          depends = [
            (hsPkgs."streaming-concurrency" or (buildDepError "streaming-concurrency"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."testbench" or (buildDepError "testbench"))
            ];
          buildable = true;
          };
        };
      };
    }
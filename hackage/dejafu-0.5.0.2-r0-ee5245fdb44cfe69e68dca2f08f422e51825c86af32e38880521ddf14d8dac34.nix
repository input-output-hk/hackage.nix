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
      identifier = { name = "dejafu"; version = "0.5.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/dejafu";
      url = "";
      synopsis = "Systematic testing for Haskell concurrency.";
      description = "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time\n\nConcurrency is nice, deadlocks and race conditions not so much. The\n@Par@ monad family, as defined in\n<https://hackage.haskell.org/package/abstract-par/docs/Control-Monad-Par-Class.html abstract-par>\nprovides deterministic parallelism, but sometimes we can tolerate a\nbit of nondeterminism.\n\nThis package builds on the\n<https://hackage.haskell.org/package/concurrency concurrency>\npackage by enabling you to systematically and deterministically test\nyour concurrent programs.\n\n== Déjà Fu with 'IO':\n\nThe core assumption underlying Déjà Fu is that any apparent\nnondeterminism arises purely from the scheduling behaviour. To put\nit another way, a given computation, parametrised with a fixed set\nof scheduling decisions, is deterministic.\n\nWhilst this assumption may not hold in general when 'IO' is\ninvolved, you should strive to produce test cases where it does.\n\n== Memory Model\n\nThe testing functionality supports a few different memory models,\nfor computations which use non-synchronised `CRef` operations. The\nsupported models are:\n\n* __Sequential Consistency:__ A program behaves as a simple\ninterleaving of the actions in different threads. When a CRef is\nwritten to, that write is immediately visible to all threads.\n\n* __Total Store Order (TSO):__ Each thread has a write buffer. A\nthread sees its writes immediately, but other threads will only\nsee writes when they are committed, which may happen later. Writes\nare committed in the same order that they are created.\n\n* __Partial Store Order (PSO):__ Each CRef has a write buffer. A\nthread sees its writes immediately, but other threads will only\nsee writes when they are committed, which may happen later. Writes\nto different CRefs are not necessarily committed in the same order\nthat they are created.\n\nIf a testing function does not take the memory model as a parameter,\nit uses TSO.\n\nSee the <https://github.com/barrucadu/dejafu README> for more\ndetails.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."concurrency" or (buildDepError "concurrency"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."ref-fd" or (buildDepError "ref-fd"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ];
        };
      };
    }
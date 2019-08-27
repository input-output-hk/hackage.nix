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
      specVersion = "1.8";
      identifier = { name = "hydra-print"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2013, Ryan Newton";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton";
      homepage = "https://github.com/rrnewton/hydra-print";
      url = "";
      synopsis = "NCurses interface to view multiple ByteString streams in parallel.";
      description = "Output from parallel subprocesses is an ugly, many-headed beast.\nPiping though hydra-print provides an NCurses interface to a dynamic\nset output streams, displayed without interleaving.  This is a\ncommon problem, for example, with parallel compiles, or\ndata-processing scripts.\n\nSpecifically, this small library will split the screen when\nparallelism occurs, and unsplit it when the parallelism is\nfinished (i.e. dynamically growing and losing \\\"heads\\\").\nThe @io-streams@ library is used for all stream inputs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."ncurses" or (buildDepError "ncurses"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      exes = {
        "systemtest-hydra-print" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ncurses" or (buildDepError "ncurses"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "hydra-view" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ncurses" or (buildDepError "ncurses"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "hydra-head" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ncurses" or (buildDepError "ncurses"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        };
      tests = {
        "unittest-hydra-print" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ncurses" or (buildDepError "ncurses"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            ];
          };
        };
      };
    }
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
      identifier = { name = "target"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "eseidel@cs.ucsd.edu";
      author = "Eric Seidel";
      homepage = "";
      url = "";
      synopsis = "Generate test-suites from refinement types.";
      description = "Target is a library for testing Haskell functions based on\nproperties encoded as refinement types.\n\nThe programmer specifies the expected behavior of a\nfunction with a refinement type, and Target then checks\nthat the function satisfies the specification by\nenumerating valid inputs up to some size, calling the\nfunction, and validating the output. Target excels when the\nspace of valid inputs is a sparse subset of all possible\ninputs, e.g. when dealing with dataypes with complex\ninvariants like red-black trees.\n\n\"Test.Target\" is the main entry point and should contain\neverything you need to use Target with types from the\n\"Prelude\". \"Test.Target.Targetable\" will also be useful if\nyou want to test functions that use other types.\n\nFor information on how to /specify/ interesting properties\nwith refinement types, we have a series of\n<http://goto.ucsd.edu/~rjhala/liquid/haskell/blog/blog/categories/basic/ blog posts>\nas well as an\n<http://github.com/ucsd-progsys/liquidhaskell/tree/master/docs/tutorial evolving tutorial>.\nTarget uses the same specification language as LiquidHaskell,\nso the examples should carry over.\n\nFinally, Target requires either <https://z3.codeplex.com/ Z3>\n(@>=4.3@) or <http://cvc4.cs.nyu.edu/web/ CVC4> (@>=1.4@) to\nbe present in your @PATH@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."liquid-fixpoint" or (buildDepError "liquid-fixpoint"))
          (hsPkgs."liquidhaskell" or (buildDepError "liquidhaskell"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."target" or (buildDepError "target"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."liquid-fixpoint" or (buildDepError "liquid-fixpoint"))
            (hsPkgs."liquidhaskell" or (buildDepError "liquidhaskell"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."SafeSemaphore" or (buildDepError "SafeSemaphore"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
            (hsPkgs."data-timeout" or (buildDepError "data-timeout"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."target" or (buildDepError "target"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."liquidhaskell" or (buildDepError "liquidhaskell"))
            (hsPkgs."liquid-fixpoint" or (buildDepError "liquid-fixpoint"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
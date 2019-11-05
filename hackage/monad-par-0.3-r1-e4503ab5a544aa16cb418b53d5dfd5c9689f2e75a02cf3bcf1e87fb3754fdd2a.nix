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
      identifier = { name = "monad-par"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2011";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "A library for parallel programming based on a monad";
      description = "This library offers an alternative parallel programming\nAPI to that provided by the @parallel@ package.\nA 'Par' monad allows the simple description of\nparallel computations, and can be used to add\nparallelism to pure Haskell code.  The basic API\nis straightforward: the monad supports forking\nand simple communication in terms of 'IVar's.\nThe library comes with a work-stealing\nimplementation, but the internals are also\nexposed so that you can build your own scheduler\nif necessary.\nExamples of use can be found in the examples/ directory\nof the source package.\nThe modules below provide additionaly schedulers,\ndata structures, and other added capabilities\nlayered on top of the 'Par' monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."abstract-par" or (buildDepError "abstract-par"))
          (hsPkgs."abstract-deque" or (buildDepError "abstract-deque"))
          (hsPkgs."monad-par-extras" or (buildDepError "monad-par-extras"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test-monad-par" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."abstract-par" or (buildDepError "abstract-par"))
            (hsPkgs."monad-par-extras" or (buildDepError "monad-par-extras"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-th" or (buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        };
      };
    }
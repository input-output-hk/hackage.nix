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
      identifier = { name = "monad-memo"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eduard.sergeev@gmail.com";
      author = "Eduard Sergeev";
      homepage = "https://github.com/EduardSergeev/monad-memo";
      url = "";
      synopsis = "Memoization monad transformer";
      description = "Memoization monad transformer supporting most of the standard monad transformers and a range of memoization cache types: from default pure maps to extremely fast mutable vectors\n\nTo add memoization behaviour to a monadic function:\n\n1) Add 'Control.Monad.Memo.memo' combinator at the point when memoization is required (i.e. recursive call)\n\n>import Control.Monad.Memo\n>\n>fibm 0 = return 0\n>fibm 1 = return 1\n>fibm n = do\n>  n1 <- memo fibm (n-1)\n>  n2 <- memo fibm (n-2)\n>  return (n1+n2)\n\n2) Use approprite /*eval*/ or /*run*/ function to evaluate resulting `MonadMemo` monad:\n\n>startEvalMemo (fibm 100)\n\nSee detailed description and examples: \"Control.Monad.Memo\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"));
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"));
          };
        };
      benchmarks = {
        "all" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"));
          };
        };
      };
    }
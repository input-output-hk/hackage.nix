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
      identifier = { name = "expressions-z3"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Jakub Daniel";
      maintainer = "jakub.daniel@protonmail.com";
      author = "Jakub Daniel";
      homepage = "";
      url = "";
      synopsis = "Encode and Decode expressions from Z3 ASTs";
      description = "A simple interface for converting expressions back and forth between pure\nrepresentation and an AST within a Z3 context.\n\nAssume\n\n> λ> :m + Control.Monad Data.Expression Data.Expression.Z3 Z3.Monad Data.Singletons\n> λ> :t f\n> f :: MonadZ3 z3 => AST -> z3 AST\n\nThen\n\n> λ> let g :: ( MonadZ3 z3, IFromZ3 f, IToZ3 f, SingI s ) => IFix f s -> z3 (IFix f s); g = fromZ3 <=< f <=< toZ3\n> λ> :t g (var \"a\" :: Lia 'BooleanSort)\n> g (var \"a\" :: Lia 'BooleanSort) :: MonadZ3 z3 => z3 (Lia 'BooleanSort)\n\nFor example\n\n> λ> let f b = mkStringSymbol \"a\" >>= mkIntVar >>= toApp >>= \\a' -> mkForallConst [] [a'] b\n> λ> let g :: ( MonadZ3 z3, IFromZ3 f, IToZ3 f ) => IFix f 'BooleanSort -> z3 (IFix f 'BooleanSort); g = fromZ3 <=< g <=< toZ3\n> λ> evalZ3 \$ g (var \"a\" .+. cnst 1 .=. var \"b\" :: Lia 'BooleanSort)\n> (forall ((a : int)) (= (+ 1 (a : int)) (b : int)))\n\nOr more interestingly\n\n> λ> :{\n> |  let f :: ( MonadZ3 z3, IFromZ3 f, IToZ3 f, SingI s ) => IFix f s -> z3 (IFix f s)\n> |      f a = do\n> |      a' <- toZ3 a\n> |      r <- getModel\n> |      case r of\n> |          (Sat, Just m) -> do\n> |              v <- modelEval m a' True\n> |              case v of\n> |                Just v' -> fromZ3 v'\n> |                _ -> error \"...\"\n> |          _ -> error \"...\"\n> :}\n> λ> evalZ3 \$ f (var \"a\" :: Lia 'BooleanSort)\n> false\n> λ> evalZ3 \$ f (var \"a\" :: Lia 'IntegralSort)\n> 0\n> λ> evalZ3 \$ f (var \"a\" .+. cnst 1:: Lia 'IntegralSort)\n> 1";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."expressions" or (buildDepError "expressions"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."list-t" or (buildDepError "list-t"))
          (hsPkgs."z3" or (buildDepError "z3"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."expressions" or (buildDepError "expressions"))
            (hsPkgs."expressions-z3" or (buildDepError "expressions-z3"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."z3" or (buildDepError "z3"))
            ];
          buildable = true;
          };
        };
      };
    }
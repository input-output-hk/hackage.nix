{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "expressions-z3";
          version = "0.1.5";
        };
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
        expressions-z3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.expressions
            hsPkgs.singletons
            hsPkgs.transformers
            hsPkgs.list-t
            hsPkgs.z3
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.expressions
              hsPkgs.expressions-z3
              hsPkgs.singletons
              hsPkgs.transformers
              hsPkgs.z3
            ];
          };
        };
      };
    }
{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "coinor-clp"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Linear Programming using COIN-OR/CLP and comfort-array";
      description = "Simple interface to linear programming functions provided by COIN-OR\nusing the flexible Array shape framework from @comfort-array@.\n\nE.g. you can use @Shape.Tuple@ to convert safely\nbetween nested tuples and arrays with the same number of elements.\n\n> type X = Shape.Element\n> type PairShape = Shape.NestedTuple Shape.TupleIndex (X,X)\n>\n> case Shape.indexTupleFromShape (Shape.static :: PairShape) of\n>   (posIx,negIx) ->\n>     case mapSnd (mapSnd Array.toTuple) <$>\n>          LP.simplex [] [[1.*posIx, (-1).*negIx] ==. 314]\n>            (LP.Minimize,\n>             Array.fromTuple (23,42) :: Array PairShape Double)\n>       of\n>         (Right (LP.Optimal, (absol, (pos, neg)))) ->\n>           printf \"absol %f,  pos %f, neg %f\\n\" absol pos neg\n>         _ -> fail \"COINOR solver failed\"\n\nAlternatives: @comfort-glpk@, @hmatrix-glpk@, @glpk-hs@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."linear-programming" or (errorHandler.buildDepError "linear-programming"))
          (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        pkgconfig = [
          (pkgconfPkgs."clp" or (errorHandler.pkgConfDepError "clp"))
          (pkgconfPkgs."coinutils" or (errorHandler.pkgConfDepError "coinutils"))
        ];
        buildable = true;
      };
      tests = {
        "coinor-clp-test" = {
          depends = [
            (hsPkgs."coinor-clp" or (errorHandler.buildDepError "coinor-clp"))
            (hsPkgs."linear-programming" or (errorHandler.buildDepError "linear-programming"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }
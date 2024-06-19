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
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "hasmtlib"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2024 Julian Bruder";
      maintainer = "julian.bruder@outlook.com";
      author = "Julian Bruder";
      homepage = "https://github.com/bruderj15/Hasmtlib";
      url = "";
      synopsis = "A monad for interfacing with external SMT solvers";
      description = "Hasmtlib is a library for generating SMTLib2-problems using a monad.\n.\nIt takes care of encoding your problem, marshaling the data to an external solver and parsing and interpreting the result into Haskell types.\nIt is highly inspired by ekmett/ersatz which does the same for QSAT.\nCommunication with external solvers is handled by tweag/smtlib-backends.\n.\nFor example we can utilize existing instances for V3 to symbolically use Num and Metric operations.\n.\n> {-# LANGUAGE DataKinds #-}\n.\n> import Language.Hasmtlib\n> import Linear\n.\n> -- instances with default impl\n> instance Codec a => Codec (V3 a)\n> instance Variable a => Variable (V3 a)\n.\n> main :: IO ()\n> main = do\n>   res <- solveWith (solver cvc5) $ do\n>     setLogic \"QF_NRA\"\n>\n>     u :: V3 (Expr RealSort) <- variable\n>     v <- variable\n>\n>     assert $ dot u v === 5\n>\n>     return (u,v)\n>\n>   print res\n.\nMay print:\n> (Sat,Just (V3 (-2.0) (-1.0) 0.0,V3 (-2.0) (-1.0) 0.0))";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."smtlib-backends" or (errorHandler.buildDepError "smtlib-backends"))
          (hsPkgs."smtlib-backends-process" or (errorHandler.buildDepError "smtlib-backends-process"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
        ];
        buildable = true;
      };
    };
  }
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
    flags = { extensibleexceptions = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "control-monad-exception"; version = "0.10.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://pepeiborra.github.com/control-monad-exception";
      url = "";
      synopsis = "Explicitly typed, checked exceptions with stack traces";
      description = "This package provides explicitly typed, checked exceptions as a library.\n\nComputations throwing different types of exception can be combined seamlessly.\n\n/Example/\n\n> data Expr = Add Expr Expr | Div Expr Expr | Val Double\n> eval (Val x)     = return x\n> eval (Add a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    let sum = v1 + v2\n>    if sum < v1 || sum < v2 then throw SumOverflow else return sum\n> eval (Div a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    if v2 == 0 then throw DivideByZero else return (v1 / v2)\n\n> data DivideByZero = DivideByZero deriving (Show, Typeable)\n> data SumOverflow  = SumOverflow  deriving (Show, Typeable)\n\n> instance Exception DivideByZero\n> instance Exception SumOverflow\n\nGHCi infers the following types\n\n> eval :: (Throws DivideByZero l, Throws SumOverflow l) => Expr -> EM l Double\n> eval `catch` \\ (e::DivideByZero) -> return (-1)  :: Throws SumOverflow l => Expr -> EM l Double\n> runEM(eval `catch` \\ (e::SomeException) -> return (-1))  :: Expr -> Double\n\n\nIn addition to explicitly typed exceptions his package provides:\n\n* Support for explicitly documented, unchecked exceptions (via 'Control.Monad.Exception.tryEMT').\n\n* Support for selective unchecked exceptions (via 'Control.Monad.Exception.UncaughtException').\n\n* Support for exception call traces via 'Control.Monad.Loc.MonadLoc'. /Example:/\n\n>\n> f () = do throw MyException\n> g a  = do f a\n>\n> main = runEMT $ do g () `catchWithSrcLoc`\n>                        \\loc (e::MyException) -> lift(putStrLn$ showExceptionWithTrace loc e)\n>\n> -- Running main produces the output:\n>\n> *Main> main\n>  MyException\n>    in f, Main(example.hs): (1,6)\n>       g, Main(example.hs): (2,6)\n>       main, Main(example.hs): (5,9)\n>       main, Main(example.hs): (4,16)\n\n/Changes/:\n\n* 0.9.0 - Moved to transformers (finally leaving the whole mtl-transformers cisma behind)\n* 0.10.0 - removed the dependency on safe-failure";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monadloc" or (errorHandler.buildDepError "monadloc"))
        ] ++ (if flags.extensibleexceptions
          then [
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }
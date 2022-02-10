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
    flags = { transformers = true; extensibleexceptions = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "control-monad-exception"; version = "0.4.8"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://pepeiborra.github.com/control-monad-exception";
      url = "";
      synopsis = "Explicitly typed, checked exceptions with stack traces";
      description = "This package provides explicitly typed, checked exceptions as a library.\n\nComputations throwing different types of exception can be combined seamlessly.\n\n/Example/\n\n> data Expr = Add Expr Expr | Div Expr Expr | Val Double\n> eval (Val x)     = return x\n> eval (Add a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    let sum = v1 + v2\n>    if sum < v1 || sum < v2 then throw SumOverflow else return sum\n> eval (Div a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    if v2 == 0 then throw DivideByZero else return (v1 / v2)\n\n> data DivideByZero = DivideByZero deriving (Show, Typeable)\n> data SumOverflow  = SumOverflow  deriving (Show, Typeable)\n\n> instance Exception DivideByZero\n> instance Exception SumOverflow\n\nGHCi infers the following types\n\n> eval :: (Throws DivideByZero l, Throws SumOverflow l) => Expr -> EM l Double\n> eval `catch` \\ (e::DivideByZero) -> return (-1)  :: Throws SumOverflow l => Expr -> EM l Double\n> runEM(eval `catch` \\ (e::SomeException) -> return (-1))  :: Expr -> Double\n\n\nThis package provides, among other things:\n\n* Support for explicitly documented, unchecked exceptions (with 'tryEM').\n\n* Support for selective unchecked exceptions (with 'UncaughtException').\n\n* Support for exception stack traces (experimental). /Example:/\n\n>       f () = $withLocTH $ throw MyException\n>       g a  = $withLocTH $ f a\n>\n>       main = runEMT $ $withLocTH $ do\n>       g () `catchWithSrcLoc` \\loc (e::MyException) -> lift(putStrLn$ showExceptionWithTrace loc e)\n\n>        -- Running main produces the output:\n\n>       *Main> main\n>       MyException\n>        in Main(example.hs): (12,6)\n>           Main(example.hs): (11,7)\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (if flags.extensibleexceptions
          then [
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (if flags.transformers
          then [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
            ]
          else [ (hsPkgs."mtl" or (errorHandler.buildDepError "mtl")) ]);
        buildable = true;
        };
      };
    }
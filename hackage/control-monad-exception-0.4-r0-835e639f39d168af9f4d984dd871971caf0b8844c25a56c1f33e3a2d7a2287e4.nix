{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      transformers = true;
      extensibleexceptions = false;
    };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "control-monad-exception";
        version = "0.4";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://safe-tools.dsic.upv.es/mediawiki/index.php/Jose_Iborra/Papers/Exceptions";
      url = "";
      synopsis = "Explicitly typed, checked exceptions with stack traces";
      description = "This package provides explicitly typed, checked exceptions as a library.\n/Example/\n\n> data Expr = Add Expr Expr | Div Expr Expr | Val Double\n> eval (Val x)     = return x\n> eval (Add a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    let sum = v1 + v2\n>    if sum < v1 || sum < v2 then throw SumOverflow else return sum\n> eval (Div a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    if v2 == 0 then throw DivideByZero else return (v1 / v2)\n\n> data DivideByZero = DivideByZero deriving (Show, Typeable)\n> data SumOverflow  = SumOverflow  deriving (Show, Typeable)\n\n> instance Exception DivideByZero\n> instance Exception SumOverflow\n\nGHCi infers the following types\n\n> eval :: (Throws DivideByZero l, Throws SumOverflow l) => Expr -> EM l Double\n> eval `catch` \\ (e::DivideByZero) -> return (-1)  :: Throws SumOverflow l => Expr -> EM l Double\n> runEM(eval `catch` \\ (e::SomeException) -> return (-1))  :: Expr -> Double\nNew in version 0.4:\n* (optionally) Unchecked exceptions (with 'UncaughtException')\n* Exception stack traces (with 'WithSrcLoc')";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
        ] ++ (if flags.extensibleexceptions
          then [
            (hsPkgs.extensible-exceptions)
            (hsPkgs.base)
          ]
          else [
            (hsPkgs.base)
          ])) ++ (if flags.transformers
          then [
            (hsPkgs.transformers)
            (hsPkgs.monads-fd)
          ]
          else [ (hsPkgs.mtl) ]);
      };
    };
  }
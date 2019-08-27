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
    flags = { extensibleexceptions = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "control-monad-exception"; version = "0.10.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://pepeiborra.github.com/control-monad-exception";
      url = "";
      synopsis = "Explicitly typed, checked exceptions with stack traces";
      description = "This package provides explicitly typed, checked exceptions as a library.\n\nComputations throwing different types of exception can be combined seamlessly.\n\n/Example/\n\n> data Expr = Add Expr Expr | Div Expr Expr | Val Double\n> eval (Val x)     = return x\n> eval (Add a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    let sum = v1 + v2\n>    if sum < v1 || sum < v2 then throw SumOverflow else return sum\n> eval (Div a1 a2) = do\n>    v1 <- eval a1\n>    v2 <- eval a2\n>    if v2 == 0 then throw DivideByZero else return (v1 / v2)\n\n> data DivideByZero = DivideByZero deriving (Show, Typeable)\n> data SumOverflow  = SumOverflow  deriving (Show, Typeable)\n\n> instance Exception DivideByZero\n> instance Exception SumOverflow\n\nGHCi infers the following types\n\n> eval :: (Throws DivideByZero l, Throws SumOverflow l) => Expr -> EM l Double\n> eval `catch` \\ (e::DivideByZero) -> return (-1)  :: Throws SumOverflow l => Expr -> EM l Double\n> runEM(eval `catch` \\ (e::SomeException) -> return (-1))  :: Expr -> Double\n\n\nIn addition to explicitly typed exceptions his package provides:\n\n* Support for explicitly documented, unchecked exceptions (via 'Control.Monad.Exception.tryEMT').\n\n* Support for selective unchecked exceptions (via 'Control.Monad.Exception.UncaughtException').\n\n* Support for exception call traces via 'Control.Monad.Loc.MonadLoc'. /Example:/\n\n>\n> f () = do throw MyException\n> g a  = do f a\n>\n> main = runEMT \$ do g () `catchWithSrcLoc`\n>                        \\loc (e::MyException) -> lift(putStrLn\$ showExceptionWithTrace loc e)\n>\n> -- Running main produces the output:\n>\n> *Main> main\n>  MyException\n>    in f, Main(example.hs): (1,6)\n>       g, Main(example.hs): (2,6)\n>       main, Main(example.hs): (5,9)\n>       main, Main(example.hs): (4,16)\n\n/Changes/:\n\n\n* 0.9.0 - Moved to transformers (finally leaving the whole mtl-transformers cisma behind)\n\n* 0.10.0 - removed the dependency on safe-failure\n\n* 0.10.1 - compatibility with failure 0.2 (thanks to Bas van Dijk)\n\n* 0.10.2 - use the identity type from mtl (thanks to Bas), require minimum cabal-install version (thanks to Bernhard Urban)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."failure" or (buildDepError "failure"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monadloc" or (buildDepError "monadloc"))
          ] ++ (if flags.extensibleexceptions
          then [
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."base" or (buildDepError "base"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      };
    }
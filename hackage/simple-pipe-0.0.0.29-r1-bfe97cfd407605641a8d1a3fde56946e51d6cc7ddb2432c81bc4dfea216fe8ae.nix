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
      identifier = { name = "simple-pipe"; version = "0.0.0.29"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://github.com/YoshikuniJujo/simple-pipe/wiki";
      url = "";
      synopsis = "simple pipeline library like conduit";
      description = "\nexamples/upperFile.hs\n\n* read file (sample.txt)\n\n* take 3 lines\n\n* to upper all lines\n\n* write to stdout\n\nextensions\n\n\n* PackageImports\n\n> import Data.Pipe\n> import Data.Char\n> import System.IO\n> import \"monads-tf\" Control.Monad.Trans\n>\n> main :: IO ()\n> main = do\n> \t_ <- runPipe \$ readFileP \"sample.txt\"\n>\t\t=\$= takeP 3\n>\t\t=\$= convert (map toUpper)\n>\t\t=\$= writeString\n> \treturn ()\n>\n> readFileP :: FilePath -> Pipe () String IO ()\n> readFileP fp = bracket (openFile fp ReadMode) hClose hRead\n>\n> hRead :: Handle -> Pipe () String IO ()\n> hRead h = do\n> \teof <- lift \$ hIsEOF h\n> \tif eof then return () else do\n> \t\tl <- lift \$ hGetLine h\n> \t\tyield l\n> \t\thRead h\n>\n> writeString :: Pipe String () IO ()\n> writeString = do\n> \tms <- await\n> \tcase ms of\n> \t\tJust s -> lift (putStrLn s) >> writeString\n> \t\t_ -> return ()\n>\n> takeP :: Monad m => Int -> Pipe a a m ()\n> takeP 0 = return ()\n> takeP n = do\n>\tmx <- await\n>\tcase mx of\n>\t\tJust x -> yield x >> takeP (n - 1)\n>\t\t_ -> return ()\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        };
      };
    }
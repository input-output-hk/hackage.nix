{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "simple-pipe"; version = "0.0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://github.com/YoshikuniJujo/simple-pipe/wiki";
      url = "";
      synopsis = "simple pipeline library like conduit";
      description = "\nexamples/upperFile.hs\n\n* read file (sample.txt)\n\n* take 3 lines\n\n* to upper all lines\n\n* write to stdout\n\nextensions\n\n\n* PackageImports\n\n> import Data.Pipe\n> import Data.Char\n> import System.IO\n> import \"monads-tf\" Control.Monad.Trans\n>\n> main :: IO ()\n> main = do\n> \t_ <- runPipe \$ readFileP \"sample.txt\"\n>\t\t=\$= takeP 3\n>\t\t=\$= convert (map toUpper)\n>\t\t=\$= writeString\n> \treturn ()\n>\n> readFileP :: FilePath -> Pipe () String IO ()\n> readFileP fp = bracket (openFile fp ReadMode) hClose hRead\n>\n> hRead :: Handle -> Pipe () String IO ()\n> hRead h = do\n> \teof <- lift \$ hIsEOF h\n> \tif eof then return () else do\n> \t\tl <- lift \$ hGetLine h\n> \t\tyield l\n> \t\thRead h\n>\n> writeString :: Pipe String () IO ()\n> writeString = do\n> \tms <- await\n> \tcase ms of\n> \t\tJust s -> lift (putStrLn s) >> writeString\n> \t\t_ -> return ()\n>\n> convert :: Monad m => (a -> b) -> Pipe a b m ()\n> convert f = do\n> \tmx <- await\n> \tcase mx of\n> \t\tJust x -> yield (f x) >> convert f\n> \t\t_ -> return ()\n>\n> takeP :: Monad m => Int -> Pipe a a m ()\n> takeP 0 = return ()\n> takeP n = do\n>\tmx <- await\n>\tcase mx of\n>\t\tJust x -> yield x >> takeP (n - 1)\n>\t\t_ -> return ()\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.monads-tf)
          ];
        };
      };
    }
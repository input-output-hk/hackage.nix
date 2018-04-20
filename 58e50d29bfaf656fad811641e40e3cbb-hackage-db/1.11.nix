{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hackage-db";
          version = "1.11";
        };
        license = "BSD-3-Clause";
        copyright = "Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons <simons@cryp.to>";
        homepage = "http://github.com/peti/hackage-db";
        url = "";
        synopsis = "access Hackage's package database via Data.Map";
        description = "This module provides simple access to the Hackage database by means\nof @Data.Map@. Suppose you wanted to implement a utility that queries\nthe set of available versions for a given package, the following\nprogram would do the trick:\n\n> import qualified Distribution.Hackage.DB as DB\n> import Distribution.Text ( display )\n> import System.Environment ( getArgs )\n>\n> main :: IO ()\n> main = do\n>   pkgs <- getArgs\n>   db <- DB.readHackage\n>   let getVersions name = maybe [] DB.keys (DB.lookup name db)\n>   mapM_ (putStrLn . unwords . map display . getVersions) pkgs\n\nWhen run, it would produce the following output:\n\n> ./a.out containers deepseq cabal-install\n> 0.1.0.0 0.1.0.1 0.2.0.0 0.2.0.1 0.3.0.0 0.4.0.0\n> 1.0.0.0 1.1.0.0 1.1.0.1 1.1.0.2\n> 0.4.0 0.5.0 0.5.1 0.5.2 0.6.0 0.6.2 0.6.4 0.8.0 0.8.2 0.10.0 0.10.2\n\nNote that once the database has been parsed, it can be accessed\nquickly, but the inital cost of reading @00-index.tar@ is fairly\nhigh.\n\nThis package is known to work on Linux and Mac OS X, but it's\nprobably not going to work on Windows (because no-one tested it, as\nfar as I know).";
        buildType = "Simple";
      };
      components = {
        hackage-db = {
          depends  = [
            hsPkgs.base
            hsPkgs.tar
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.utf8-string
          ];
        };
      };
    }
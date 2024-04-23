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
      specVersion = "1.6";
      identifier = { name = "hackage-db"; version = "1.4"; };
      license = "BSD-3-Clause";
      copyright = "Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/hackage-db";
      url = "";
      synopsis = "provide access to the Hackage database via Data.Map";
      description = "This module provides simple access to the Hackage database by means\nof @Data.Map@. Suppose you wanted to implement a utility that queries\nthe set of available versions for a given package, the following\nprogram would do the trick:\n\n> import qualified Distribution.Hackage.DB as DB\n> import Distribution.Text ( display )\n> import System.Environment ( getArgs )\n>\n> main :: IO ()\n> main = do\n>   pkgs <- getArgs\n>   db <- DB.readHackage\n>   let getVersions name = maybe [] DB.keys (DB.lookup name db)\n>   mapM_ (putStrLn . unwords . map display . getVersions) pkgs\n\nWhen run, it would produce the following output:\n\n> ./a.out containers deepseq cabal-install\n> 0.1.0.0 0.1.0.1 0.2.0.0 0.2.0.1 0.3.0.0 0.4.0.0\n> 1.0.0.0 1.1.0.0 1.1.0.1 1.1.0.2\n> 0.4.0 0.5.0 0.5.1 0.5.2 0.6.0 0.6.2 0.6.4 0.8.0 0.8.2 0.10.0 0.10.2\n\nNote that once the database has been parsed, it can be accessed\nquickly, but the inital cost of reading @00-index.tar@ is fairly\nhigh.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }
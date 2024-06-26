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
      specVersion = "1.10";
      identifier = { name = "command-qq"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov";
      homepage = "http://biegunka.github.io/command-qq/";
      url = "";
      synopsis = "Quasiquoters for external commands";
      description = "Features:\n\n* Quasiquotation syntax for external commands:\n\n> [sh| echo hello world! |]\n\n* Easy way to define custom quasiquoters (see @examples/CustomQQ.hs@)\n\n> ghci = QQ.quoter $ QQ.callCommand \"ghc\" [\"-ignore-dot-ghci\", \"-e\"]\n\n* Can embed Haskell variables in scripts\n\n> class Embed a where\n>   embed :: a -> String\n>\n> instance Embed String\n>   embed = id\n>\n> main :: IO ()\n> main = let excl = replicate 3 '!' in -- I'd love to show an example but haddock markup fails here\n\n* Can embed quasiquoters in DSLs (see @examples/CommandT.hs@)\n\n> class Eval r where\n>   eval :: String -> [String] -> r\n>\n> instance Eval (IO ExitCode) where\n>   eval command args = System.Process.rawSystem command args\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."command-qq" or (errorHandler.buildDepError "command-qq"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }
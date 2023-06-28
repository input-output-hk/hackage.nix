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
      specVersion = "2.4";
      identifier = { name = "jaskell"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ombspring@gmail.com";
      author = "Owen Bechtel";
      homepage = "https://github.com/UnaryPlus/jaskell";
      url = "";
      synopsis = "Stack-based concatenative language embedded in Haskell";
      description = "Jaskell is a stack-based programming language implemented using normal Haskell\ntypes and functions, along with a quasiquoter that allows for a more elegant syntax\nthan what pure Haskell supports. Since it is embedded in Haskell, Jaskell is purely\nfunctional and, unlike other stack-based languages, statically typed. The standard\nlibrary is based on that of [Joy](https://www.kevinalbrecht.com/code/joy-mirror/),\nand the name \\\"Jaskell\\\" is a portmanteau of \\\"Joy\\\" and \\\"Haskell.\\\"\n\nA Jaskell program is a sequence of commands. Each command is a function which takes\na stack &#8212; represented in Haskell as a left-nested tuple &#8212; and returns another stack.\nIn order to accomodate side effects, commands need not actually be functions; any\narrow is allowed as a command. The two most useful arrow types are @(->)@ and @Kleisli IO@.\n\nTwo example programs are shown below. The first program asks for the user's name and then\nprints a greeting. The second program defines a @qsort@ function and then uses it to\nsort a list.\n\n> {-# LANGUAGE QuasiQuotes #-}\n> import qualified Jaskell\n> import Jaskell.Quote (jsl)\n> import Jaskell.Prelude\n>\n> main :: IO ()\n> main = Jaskell.runK [jsl|\n>   \"What's your name?\" !putStrLn [ \"Hello, \", ?getLine, \"!\" ] $concat !putStrLn\n>   |]\n>\n> sorted :: ((), [Int])\n> sorted = Jaskell.run [jsl|\n>   DEF small =\n>     { $null } { uncons $null } disjoin ;\n>   DEF qsort =\n>     small { } { uncons { < } split rolldown }\n>     { swap cons ++ } binrec' ;\n>   [3,5,1,6,4,2] qsort\n>   |]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."jaskell" or (errorHandler.buildDepError "jaskell"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }
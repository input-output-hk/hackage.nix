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
    flags = { tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "plugins-auto"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "";
      url = "";
      synopsis = "Automatic recompilation and reloading of haskell modules.";
      description = "This library provides support for automatically recompiling and reloading\nmodules into your programs when the source code is modified.\n\nAny program called ghc in your PATH will be used for recompiling.\n\n> module Main where\n> import System.IO           (hSetBuffering,stdout,BufferMode(..))\n> import System.Plugins.Auto (withMonadIO,initPlugins)\n> import Answer\n>\n> main :: IO ()\n> main = do ph<-initPlugins\n>         hSetBuffering stdout NoBuffering\n>         putStrLn \"This program interacts with you in a loop.\"\n>         putStrLn \"Type something, and the program will respond when you hit the Enter Key.\"\n>         putStrLn \"Modify Answer.hs while interacting and you should see the answers\"\n>         putStrLn \"change accordingly.\"\n>         let interactiveLoop = prompt ph >> interactiveLoop\n>         interactiveLoop\n> where\n>   prompt ph = do\n>      putStr \"> \"\n>      input <- getLine\n>      $(withMonadIO 'getAnswer) ph id notLoaded$ \\errs getAnswer ->\n>          mapM_ putStrLn errs  >> getAnswer input\n>\n>   notLoaded errs =\n>      if null errs then putStrLn \"Plugin not loaded yet.\"\n>        else putStrLn \"Errors found:\" >> mapM_ (putStrLn . (\"  \"++)) errs\n>               >> putStrLn \"Try fixing the errors and come back here.\"\n\n> module Answer where\n>\n> getAnswer :: String -> IO ()\n> getAnswer input = putStrLn (\"What you typed: \"++input)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }
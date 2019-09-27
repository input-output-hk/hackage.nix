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
      identifier = { name = "plugins-auto"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "";
      url = "";
      synopsis = "Automatic recompilation and reloading of haskell modules.";
      description = "This library provides support for automatically recompiling and reloading\nmodules into your programs when the source code is modified.\n\nAny program called ghc in your PATH will be used for recompiling.\n\n> module Main where\n> import System.IO           (hSetBuffering,stdout,BufferMode(..))\n> import System.Plugins.Auto (withMonadIO,initPlugins)\n> import Answer\n>\n> main :: IO ()\n> main = do ph<-initPlugins\n>         hSetBuffering stdout NoBuffering\n>         putStrLn \"This program interacts with you in a loop.\"\n>         putStrLn \"Type something, and the program will respond when you hit the Enter Key.\"\n>         putStrLn \"Modify Answer.hs while interacting and you should see the answers\"\n>         putStrLn \"change accordingly.\"\n>         let interactiveLoop = prompt ph >> interactiveLoop\n>         interactiveLoop\n> where\n>   prompt ph = do\n>      putStr \"> \"\n>      input <- getLine\n>      \$(withMonadIO 'getAnswer) ph notLoaded\$ \\errs getAnswer ->\n>          mapM_ putStrLn errs  >> getAnswer input\n>\n>   notLoaded errs =\n>      if null errs then putStrLn \"Plugin not loaded yet.\"\n>        else putStrLn \"Errors found:\" >> mapM_ (putStrLn . (\"  \"++)) errs\n>               >> putStrLn \"Try fixing the errors and come back here.\"\n\n> module Answer where\n>\n> getAnswer :: String -> IO ()\n> getAnswer input = putStrLn (\"What you typed: \"++input)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hinotify" or (buildDepError "hinotify"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."plugins" or (buildDepError "plugins"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test-plugins-auto" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }
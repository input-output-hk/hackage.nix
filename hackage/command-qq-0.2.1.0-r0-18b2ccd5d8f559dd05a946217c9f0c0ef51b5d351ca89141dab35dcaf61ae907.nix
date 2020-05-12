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
      identifier = { name = "command-qq"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov";
      homepage = "http://biegunka.github.io/command-qq/";
      url = "";
      synopsis = "Quasiquoters for external commands";
      description = "Features:\n\n* Quasiquotation syntax for external interpreters\n\n> >>> [sh_| echo hello world! |]\n> hello world!\n\n* Custom quasiquoters\n\n> ghci = quoter \$ callCommand \"ghc\" [\"-ignore-dot-ghci\", \"-e\"]\n\nThen you can use @ghci@ in ghci!\n\n> >>> [ghci| putStrLn \"hello world!\" |] :: IO ()\n> hello world!\n\nFor more examples, see \"System.Command.QQ.Predef\"\n\n* Haskell values embedding\n\nSee README.md for an example\n\n* DSLs\n\nSee @examples/CommandT.hs@\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
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
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
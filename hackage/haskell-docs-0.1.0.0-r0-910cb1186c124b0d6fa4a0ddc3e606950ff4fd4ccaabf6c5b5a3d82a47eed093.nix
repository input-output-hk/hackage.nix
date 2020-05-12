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
      specVersion = "1.8";
      identifier = { name = "haskell-docs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://github.com/chrisdone/haskell-docs";
      url = "";
      synopsis = "A program to find and display the docs of a name from a\ngiven module.";
      description = "Given a module name and a name, it will find and display\nthe documentation of that name.\n\n/EXAMPLE USAGE/\n\n> \$ haskell-docs Data.List.Split split\n> Split a list according to the given splitting strategy. This is\n>  how to \"run\" a Splitter that has been built using the other\n>  combinators.\n\n/INSTALLATION/\n\nYou should ensure that you have\n\n> documentation: True\n\nin your .cabal/config so that the necessary\n.haddock files are generated.\n\nHaddock is very sensitive to the GHC version, and\nso too will this program be, to GHC, and to Haddock. I suggest\ninstalling like this:\n\n> cabal-dev install haskell-docs --constraint haddock==2.10.0\n\nBut replace the 2.10.0 with the version that haddock --version gives you.\n\nI could perhaps instead have a flag for each GHC\nrelease back a few versions.\n\n/USING WITH GHCI/\n\n> > :def doc \\input -> return (\":!haskell-docs \" ++ input)\n> > :doc System.IO getContents base\n> The getContents operation returns all user input as a single string,\n>  which is read lazily as it is needed\n>  (same as hGetContents stdin).\n\nAdd the above :def to your user .ghci to have it on start-up.\n\n/CONTRIBUTION AND ISSUES/\n\nIssues/ideas/contributions please make a Github issue: <http://github.com/chrisdone/haskell-docs/issues>\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskell-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "haskell-docs"; version = "4.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://github.com/chrisdone/haskell-docs";
      url = "";
      synopsis = "A program to find and display the docs of a name from a\ngiven module.";
      description = "Given a module name and a name, it will find and display\nthe documentation of that name.\n\n/EXAMPLE USAGE/\n\n> \$ haskell-docs Data.List.Split split\n> split :: forall a. Splitter a -> [a] -> [[a]]\n> Split a list according to the given splitting strategy. This is\n>  how to \"run\" a Splitter that has been built using the other\n>  combinators.\n\n/INSTALLATION/\n\nYou should ensure that you have\n\n> documentation: True\n\nin your .cabal/config so that the necessary\n.haddock files are generated.\n\nHaddock is very sensitive to the GHC version. This program tries not to be. If\nyou cannot install this package due to a version problem, open a Github issue.\nIf the versions match up but the build fails, open a Github issue. Neither\ncase should arise.\n\n/USING WITH GHCI/\n\n> > :def doc \\input -> return (\":!haskell-docs \" ++ input)\n> > :doc System.IO getContents base\n> The getContents operation returns all user input as a single string,\n>  which is read lazily as it is needed\n>  (same as hGetContents stdin).\n\nAdd the above :def to your user .ghci to have it on start-up.\n\n/CONTRIBUTION AND ISSUES/\n\nIssues\\/ideas\\/contributions please make a Github issue: <http://github.com/chrisdone/haskell-docs/issues>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.8" && (compiler.version).lt "7.9")) (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.6" && (compiler.version).lt "7.7")) (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.5")) (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.2" && (compiler.version).lt "7.3")) (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.2") (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"));
        buildable = true;
        };
      exes = {
        "haskell-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-docs" or (errorHandler.buildDepError "haskell-docs"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-docs" or (errorHandler.buildDepError "haskell-docs"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "haskell-docs"; version = "4.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://github.com/chrisdone/haskell-docs";
      url = "";
      synopsis = "A program to find and display the docs and type of a name";
      description = "Given a module name and a name, or just a name, it will find and display\nthe documentation of that name.\n\n/EXAMPLE USAGE/\n\n> \$ haskell-docs hSetBuffering\n> Package: base\n> Module: GHC.IO.Handle\n> hSetBuffering :: Handle -> BufferMode -> IO ()\n> Computation hSetBuffering `hdl mode` sets the mode of buffering for\n>  handle `hdl` on subsequent reads and writes.\n\n/INSTALLATION/\n\nYou should ensure that you have\n\n> documentation: True\n\nin your .cabal/config so that the necessary\n.haddock files are generated.\n\nHaddock is very sensitive to the GHC version. This program tries not to be. If\nyou cannot install this package due to a version problem, open a Github issue.\nIf the versions match up but the build fails, open a Github issue. Neither\ncase should arise.\n\n/USING WITH GHCI/\n\n> > :def doc \\input -> return (\":!haskell-docs \" ++ input)\n> > :doc getContents\n> The getContents operation returns all user input as a single string,\n>  which is read lazily as it is needed\n>  (same as hGetContents stdin).\n\nAdd the above :def to your user .ghci to have it on start-up.\n\n/CONTRIBUTION AND ISSUES/\n\nIssues\\/ideas\\/contributions please make a Github issue: <http://github.com/chrisdone/haskell-docs/issues>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.2") (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"));
        buildable = true;
        };
      exes = {
        "haskell-docs" = {
          depends = [
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
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
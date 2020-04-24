{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haskell-docs"; version = "4.2.1"; };
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
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8") (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.2") (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"));
        buildable = true;
        };
      exes = {
        "haskell-docs" = {
          depends = [
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-docs" or ((hsPkgs.pkgs-errors).buildDepError "haskell-docs"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-docs" or ((hsPkgs.pkgs-errors).buildDepError "haskell-docs"))
            ];
          buildable = true;
          };
        };
      };
    }
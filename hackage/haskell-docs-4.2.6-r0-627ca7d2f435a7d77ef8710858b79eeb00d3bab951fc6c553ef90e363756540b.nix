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
      identifier = { name = "haskell-docs"; version = "4.2.6"; };
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
        depends = ((((((([
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && false) [
          (hsPkgs."haddock-api" or (buildDepError "haddock-api"))
          (hsPkgs."haddock-library" or (buildDepError "haddock-library"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).eq "7.8.4") (hsPkgs."haddock-api" or (buildDepError "haddock-api"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).eq "7.8.3") (hsPkgs."haddock" or (buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or (buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or (buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."haddock" or (buildDepError "haddock"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.8.4") (hsPkgs."haddock-api" or (buildDepError "haddock-api"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.2") (hsPkgs."haddock" or (buildDepError "haddock"));
        buildable = true;
        };
      exes = {
        "haskell-docs" = {
          depends = [
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-docs" or (buildDepError "haskell-docs"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-docs" or (buildDepError "haskell-docs"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "1.6";
      identifier = { name = "hackage-db"; version = "1.22"; };
      license = "BSD-3-Clause";
      copyright = "Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/hackage-db";
      url = "";
      synopsis = "access Hackage's package database via Data.Map";
      description = "This module provides simple access to the Hackage database by means\nof @Data.Map@. Suppose you wanted to implement a utility that queries\nthe set of available versions for a given package, the following\nprogram would do the trick:\n\n> import qualified Distribution.Hackage.DB as DB\n> import Distribution.Text ( display )\n> import System.Environment ( getArgs )\n>\n> main :: IO ()\n> main = do\n>   pkgs <- getArgs\n>   db <- DB.readHackage\n>   let getVersions name = maybe [] DB.keys (DB.lookup name db)\n>   mapM_ (putStrLn . unwords . map display . getVersions) pkgs\n\nWhen run, it would produce the following output:\n\n> ./a.out containers deepseq cabal-install\n> 0.1.0.0 0.1.0.1 0.2.0.0 0.2.0.1 0.3.0.0 0.4.0.0\n> 1.0.0.0 1.1.0.0 1.1.0.1 1.1.0.2\n> 0.4.0 0.5.0 0.5.1 0.5.2 0.6.0 0.6.2 0.6.4 0.8.0 0.8.2 0.10.0 0.10.2";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }
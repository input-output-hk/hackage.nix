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
      identifier = { name = "hangman"; version = "1.0.1"; };
      license = "MIT";
      copyright = "(c) 2012 Hok Shun Poon";
      maintainer = "Hok Shun Poon <hok@hokshunpoon.me>";
      author = "Hok Shun Poon <hok@hokshunpoon.me>";
      homepage = "";
      url = "";
      synopsis = "Hangman implementation in Haskell written in two hours.";
      description = "A command line implementation of the classic hangman game.\nI wrote this when I was desperately bored during exam revision period\nin a couple of hours.\nHopefully you will find the implementation to be of use. It sort of began as\nan assessment of the Haskell development experience, but I plan to continue\nto maintain and extend the implementation to demonstrate how to apply good\nsoftware development practises to Haskell code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hangman" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "1.18";
      identifier = { name = "yampa2048"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(C) 2015 Konstantin Saveljev, Josh Kirklin, Maia Werbos";
      maintainer = "Konstantin Saveljev <konstantin.saveljev@gmail.com>";
      author = "Konstantin Saveljev <konstantin.saveljev@gmail.com>";
      homepage = "https://github.com/ksaveljev/yampa-2048";
      url = "";
      synopsis = "2048 game clone using Yampa/Gloss";
      description = "A simple game clone of a popular 2048 game using Yampa FRP\nlibrary and Gloss for graphics.\n\nUse the arrow keys to slide the rows or columns of the board and try to\nsurvive for as long as possible. When there is no more move possible you will\nbe presented with a game over message for 5 seconds and the game will be\nrestarted after that.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yampa2048" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."Yampa" or (buildDepError "Yampa"))
            ];
          };
        };
      };
    }
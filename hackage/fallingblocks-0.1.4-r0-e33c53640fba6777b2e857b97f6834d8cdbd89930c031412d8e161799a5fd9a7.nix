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
      specVersion = "1.2";
      identifier = { name = "fallingblocks"; version = "0.1.4"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 by Ben Sanders";
      maintainer = "Ben Sanders <bwsanders@gmail.com>";
      author = "Ben Sanders";
      homepage = "http://bencode.blogspot.com/2009/03/falling-blocks-tetris-clone-in-haskell.html";
      url = "";
      synopsis = "A fun falling blocks game.";
      description = "A game where blocks of different shapes fall down the screen.  If you\neither fill an entire line or get four of the same color in a row,\nthose disappear.  How long can you go before the blocks fill the screen?";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fallingblocks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."SDL" or (buildDepError "SDL"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."SDL-ttf" or (buildDepError "SDL-ttf"))
            (hsPkgs."SDL-mixer" or (buildDepError "SDL-mixer"))
            ];
          buildable = true;
          };
        };
      };
    }
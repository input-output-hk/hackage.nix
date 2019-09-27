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
      specVersion = "0";
      identifier = { name = "haskell-in-space"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gwern Branwen <gwern0@gmail.com>";
      author = "Christoph Lueth <christoph.lueth@dfki.de>, University of Bremen students";
      homepage = "http://www.informatik.uni-bremen.de/~cxl/lehre/pi3.ws01/asteroids/";
      url = "";
      synopsis = "'Asteroids' arcade games.";
      description = "A collection of clones of the arcade game 'Asteroids'.\nThere are two demos for moving around ('asteroids-space', 'asteroids-aufgabe');\nthere is a basic Asteroids game ('asteroids-basic'); and then there is a full\nelaborate one ('asteroids-haskelly').";
      buildType = "Simple";
      };
    components = {
      exes = {
        "asteroids-space" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HGL" or (buildDepError "HGL"))
            ];
          buildable = true;
          };
        "asteroids-aufgabe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HGL" or (buildDepError "HGL"))
            ];
          buildable = true;
          };
        "asteroids-basic" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HGL" or (buildDepError "HGL"))
            ];
          buildable = true;
          };
        "asteroids-haskelly" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."HGL" or (buildDepError "HGL"))
            ];
          buildable = true;
          };
        };
      };
    }
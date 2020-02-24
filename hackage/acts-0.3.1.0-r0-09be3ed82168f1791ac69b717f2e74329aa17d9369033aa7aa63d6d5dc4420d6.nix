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
    flags = { finitary = true; };
    package = {
      specVersion = "2.4";
      identifier = { name = "acts"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Derbyshire";
      author = "Sam Derbyshire";
      homepage = "https://github.com/sheaf/acts";
      url = "";
      synopsis = "Semigroup actions and torsors.";
      description = "Acts and torsors model types which can be transformed under the action of another type.\n\nA prototypical example is affine space, which has an action by translation:\ngiven any two points in affine space, there is a unique translation that brings one to the other.\n\nThis can be useful in a library keeping track of time: on top of needing to keep track\nof units, one also needs to distinguish between absolute time (time stamps) and relative time\n(time differences).\nThe operations one expects in this situation are:\n\n* Addition and subtraction of time differences: time differences form a (commutative) group.\n* Translation of an absolute time by a time difference: there is an action of relative time on absolute time.\n* Given two absolute times, one can obtain the time difference between them: absolute time is a torsor under relative time.\n\nThis library provides a convenient framework which helps to avoid mixing up these two different notions.\n\n\nA fleshed out example is available at \"Acts.Examples.MusicalIntervals\",\nwhich showcases the use of actions and torsors in the context of musical intervals and harmony.\nIt also demonstrates common usage patterns of this library, such as how to automatically derive instances.\n\nSee also the [project readme](https://github.com/sheaf/acts),\nwhich includes a simple example with 2D affine space.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."groups" or (buildDepError "groups"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ] ++ (pkgs.lib).optionals (flags.finitary) [
          (hsPkgs."finitary" or (buildDepError "finitary"))
          (hsPkgs."finite-typelits" or (buildDepError "finite-typelits"))
          ];
        buildable = true;
        };
      sublibs = {
        "acts-examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."groups" or (buildDepError "groups"))
            (hsPkgs."acts" or (buildDepError "acts"))
            ] ++ (pkgs.lib).optionals (flags.finitary) [
            (hsPkgs."finitary" or (buildDepError "finitary"))
            (hsPkgs."finite-typelits" or (buildDepError "finite-typelits"))
            ];
          buildable = true;
          };
        };
      };
    }
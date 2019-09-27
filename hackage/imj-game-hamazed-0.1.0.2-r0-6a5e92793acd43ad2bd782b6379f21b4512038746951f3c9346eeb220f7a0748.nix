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
      specVersion = "1.10";
      identifier = { name = "imj-game-hamazed"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 - 2018 Olivier Sohn";
      maintainer = "olivier.sohn@gmail.com";
      author = "Olivier Sohn";
      homepage = "https://github.com/OlivierSohn/hamazed/blob/master/imj-game-hamazed//README.md";
      url = "";
      synopsis = "A game with flying numbers and 8-bit color animations.";
      description = "In Hamazed, you are a 'BattleShip' pilot surrounded by flying 'Number's.\n\nYour mission is to shoot exactly the 'Number's whose sum will equate the\ncurrent 'Level' 's /target number/.\n\nThe higher the 'Level' (1..12), the more 'Number's are flying around (up-to 16).\nAnd the smaller the 'World' gets.\n\nGood luck !";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."imj-animation" or (buildDepError "imj-animation"))
          (hsPkgs."imj-animation" or (buildDepError "imj-animation"))
          (hsPkgs."imj-base" or (buildDepError "imj-base"))
          (hsPkgs."imj-prelude" or (buildDepError "imj-prelude"))
          ];
        buildable = true;
        };
      exes = {
        "imj-game-hamazed-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."imj-game-hamazed" or (buildDepError "imj-game-hamazed"))
            (hsPkgs."imj-prelude" or (buildDepError "imj-prelude"))
            ];
          buildable = true;
          };
        };
      tests = {
        "imj-game-hamazed-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."imj-base" or (buildDepError "imj-base"))
            (hsPkgs."imj-game-hamazed" or (buildDepError "imj-game-hamazed"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
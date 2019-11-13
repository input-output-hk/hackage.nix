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
      specVersion = "1.12";
      identifier = { name = "mad-props"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/mad-props#readme";
      url = "";
      synopsis = "Monadic DSL for building constraint solvers using basic propagators.";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/mad-props#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."logict" or (buildDepError "logict"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."psqueues" or (buildDepError "psqueues"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "sudoku-exe" = {
          depends = [
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."logict" or (buildDepError "logict"))
            (hsPkgs."mad-props" or (buildDepError "mad-props"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."psqueues" or (buildDepError "psqueues"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }
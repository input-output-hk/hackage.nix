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
      identifier = { name = "explicit-constraint-lens"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsag \$ hvl.no";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/explicit-constraint-lens";
      url = "";
      synopsis = "Fully-flexible polymorphic lenses, without any bizarre profunctors";
      description = "A snowclone of the great <http://hackage.haskell.org/package/lens lens>\nlibrary. It implements the full hierarchy from isomorphisms to\nsetters and folds, but instead of the Van Laarhoven implementation with\nuniversally-quantified functor mappings (powerful and elegant, but\ninfamously beginner-scaring), it encapsulates the various\nrealworld-usecase signatures like get+set or build+distinguish\nin a well-confined type family and expresses the relations between the\ndifferent optics explicitly, with a dedicated class hierarchy.\n\nSee <https://github.com/leftaroundabout/explicit-constraint-lens/blob/master/README.md the Readme>\nfor details on how this library differs from the alternatives. See\n<https://hackage.haskell.org/package/explicit-constraint-lens/docs/Lens-Explicit.html the Haddocks>\nto learn how to use it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."explicit-constraint-lens" or (buildDepError "explicit-constraint-lens"))
            ];
          buildable = true;
          };
        };
      };
    }
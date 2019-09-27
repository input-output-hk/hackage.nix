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
      identifier = { name = "groupoid"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "A Groupoid class";
      description = "\nA groupoid is structure consisting of a set of elements (here\na Haskell type) and a binary operator (in present case the\nfunction 'gappend').\n\nIt is comparable to the Monoid typeclass, but there is no\nobligation that the set supports a neutral element (mempty in\nData.Monoid).\n\nIn geometry, bounding boxes (represented as two points -\nbottom-left corner and top-right corner) give an example where\na groupoid may be more satisfying than a monoid. The union\noperation on bounding boxes is essential to track the extent\nof shapes after their superimposition. To fit bounding box\nunion into the Monoid typeclass one can do a clever trick\nrepresenting mempty with the bottom-left corner at positive\ninfinity and the top-right corner at negative infinity, the\nstandard implementation of union which uses min and max will\nstill proceed to identify the extreme corners correctly. This\nis nice enough if the bounding box coordinates are represented\nby Doubles, but a problem if they are Ints (say representing\ngrid coordinates) - one might decide it is better simply to\nconsider concrete bounding boxes and not their empty/infinite\ncousins.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      };
    }
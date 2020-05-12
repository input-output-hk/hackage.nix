{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
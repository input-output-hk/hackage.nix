{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.explicit-constraint-lens)
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "constrained-categories";
          version = "0.3.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "(@) sagemueller \$ geo.uni-koeln.de";
        author = "Justus Sagemüller";
        homepage = "https://github.com/leftaroundabout/constrained-categories";
        url = "";
        synopsis = "Constrained clones of the category-theory type classes, using ConstraintKinds.";
        description = "Haskell has, and makes great use of, powerful facilities from category\ntheory – basically various variants of functors.\n\nHowever, all those are just endofunctors in Hask, the category of\nall Haskell types with functions as morphisms. Which is sufficient\nfor container / control structures that you want to be able to handle\nany type of data, but otherwise it's a bit limiting, seeing as\nthere are (in maths, science etc.) many categories that cannot properly\nbe represented this way. Commonly used libraries such as\n<http://hackage.haskell.org/package/vector-space> thus make\nlittle notion of the fact that the objects they deal with actually\nform a category, instead defining just specialised versions of\nthe operations.\n\nThis library generalises functors etc. to a much wider class of\ncategories, by allowing for constraints on objects (so these can have\nextra properties required). At the same time, we try to keep as close\nas possible to the well-known Haskell type class hierarchies rather\nthan exactly adopting the mathematicians' notions.\n\nConsider the README file, the examples, and/or the documentation to\n\"Control.Category.Constrained\" for how to make use of this.";
        buildType = "Simple";
      };
      components = {
        "constrained-categories" = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
            hsPkgs.void
          ];
        };
      };
    }
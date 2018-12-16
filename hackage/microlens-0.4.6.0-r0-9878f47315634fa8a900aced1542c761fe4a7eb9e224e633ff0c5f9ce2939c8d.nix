{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "microlens";
        version = "0.4.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Edward Kmett, Artyom";
      homepage = "http://github.com/aelve/microlens";
      url = "";
      synopsis = "A tiny lens library with no dependencies. If you're writing an app, you probably want microlens-platform, not this.";
      description = "NOTE: If you're writing an app, you probably want <http://hackage.haskell.org/package/microlens-platform microlens-platform> – it has the most features. <http://hackage.haskell.org/package/microlens microlens> is intended more for library writers who want a tiny lens library (after all, lenses are pretty useful for everything, not just for updating records!).\n\nThis library is an extract from <http://hackage.haskell.org/package/lens lens> (with no dependencies). It's not a toy lenses library, unsuitable for “real world”, but merely a small one. It is compatible with lens, and should have same performance. It also has better documentation.\n\nThere's a longer readme <https://github.com/aelve/microlens#readme on Github>. It has a migration guide for lens users, a description of other packages in the family, a discussion of other lens libraries you could use instead, and so on.\n\nHere are some usecases for this library:\n\n* You want to define lenses or traversals in your own library, but don't want to depend on lens. Having lenses available often make working with a library more pleasant.\n\n* You just want to be able to use lenses to transform data (or even just use @over _1@ to change the first element of a tuple).\n\n* You are new to lenses and want a small library to play with.\n\nHowever, don't use this library if:\n\n* You need @Iso@s, @Prism@s, indexed traversals, or actually anything else which isn't defined here (tho some indexed functions are available elsewhere – containers and vector provide them for their types, and <http://hackage.haskell.org/package/ilist ilist> provides indexed functions for lists).\n\n* You want a library with a clean, understandable implementation (in which case you're looking for <http://hackage.haskell.org/package/lens-simple lens-simple>).\n\nAs already mentioned, if you're writing an application which uses lenses more extensively, look at <http://hackage.haskell.org/package/microlens-platform microlens-platform> – it combines features of most other microlens packages (<http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>).\n\nIf you want to export getters or folds and don't mind the <http://hackage.haskell.org/package/contravariant contravariant> dependency, please consider using <http://hackage.haskell.org/package/microlens-contra microlens-contra>.\n\nIf you haven't ever used lenses before, read <http://hackage.haskell.org/package/lens-tutorial/docs/Control-Lens-Tutorial.html this tutorial>. (It's for lens, but it applies to microlens just as well.)\n\nNote that microlens has no dependencies starting from GHC 7.10 (base-4.8). Prior to that, it depends on transformers-0.2 or above.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.9") (hsPkgs.base) ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "7.9")) [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }
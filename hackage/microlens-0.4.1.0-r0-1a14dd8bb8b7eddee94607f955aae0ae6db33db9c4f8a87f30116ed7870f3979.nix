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
      specVersion = "1.10";
      identifier = { name = "microlens"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Artyom";
      homepage = "http://github.com/aelve/microlens";
      url = "";
      synopsis = "A tiny part of the lens library with no dependencies";
      description = "This is an extract from <http://hackage.haskell.org/package/lens lens> (with no dependencies). It's not a toy lenses library, unsuitable for “real world”, but merely a small one. It is compatible with lens, and should have same performance. It also has better documentation.\n\nUse this library:\n\n* if you want to define lenses or traversals in your own library, but don't want to depend on lens\n\n* if you are new to lenses and want a small library to play with, but don't want to use something “inferior” or have to relearn things when/if you switch to lens\n\nDon't use this library:\n\n* if you need @Iso@s, @Prism@s, indexed traversals, or actually anything else which isn't defined here\n\n* if you want a library with a clean, understandable implementation (in which case you're looking for <http://hackage.haskell.org/package/lens-simple lens-simple>)\n\nIf you're writing an application which uses lenses more extensively, look at <http://hackage.haskell.org/package/microlens-platform microlens-platform> – it combines features of most other microlens packages (<http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>).\n\nIf you want to export getters or folds and don't mind the <http://hackage.haskell.org/package/contravariant contravariant> dependency, please consider using <http://hackage.haskell.org/package/microlens-contra microlens-contra>.\n\nThere's a longer readme <https://github.com/aelve/microlens#readme on Github>, you should read it if you're interested about using this library.\n\nIf you haven't ever used lenses before, read <http://hackage.haskell.org/package/lens-tutorial/docs/Control-Lens-Tutorial.html this tutorial>. (It's for lens, but it applies to microlens just as well.)\n\nNote that microlens has /no/ dependencies starting from GHC 7.10 (base-4.8). Prior to that, it has to depend on transformers-0.2 or above.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.9") (hsPkgs."base" or (errorHandler.buildDepError "base")) ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "7.9")) [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }
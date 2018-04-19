{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microlens";
          version = "0.1.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Artyom <yom@artyom.me>";
        author = "Artyom";
        homepage = "http://github.com/aelve/microlens";
        url = "";
        synopsis = "A tiny part of the lens library which you can depend upon";
        description = "This is an extract from <http://hackage.haskell.org/package/lens lens>\n(with no dependencies). It's not a toy lenses library, unsuitable for\n“real world”, but merely a small one. It is compatible with lens, and\nshould have same performance. It also has better documentation.\n\nUse this library:\n\n* if you want to define lenses or traversals in your own library, but\ndon't want to depend on lens\n\n* if you are new to lenses and want a small library to play with,\nbut don't want to use something “inferior” or have to relearn things\nwhen/if you switch to lens\n\nDon't use this library:\n\n* if you need @Iso@s, @Prism@s, indexed traversals, @at@, @ix@,\nor actually anything else which isn't defined here\n\n* if you think lenses compose “in the wrong order” (in which case\nyou're looking for\n<http://hackage.haskell.org/package/fclabels fclabels>)\n\nNote that microlens has /no/ dependencies starting from GHC 7.10\n(base-4.8). Prior to that, it has to depend on transformers-0.2 or above.\n\nAlso note that it's not done yet and there's a lot of things missing\nand I'm still writing a tutorial for it.";
        buildType = "Simple";
      };
      components = {
        microlens = {
          depends  = pkgs.lib.optional compiler.isGhc hsPkgs.base ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }
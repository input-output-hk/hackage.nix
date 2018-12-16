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
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Artyom";
      homepage = "http://github.com/aelve/microlens";
      url = "";
      synopsis = "A tiny part of the ‘lens’ library which you can depend upon.";
      description = "This is an extract from the @lens@ library (with only 1 dependency).\nIt's not a toy lenses library, unsuitable for “real world”, but merely\na small one. It is compatible with @lens@, and should have same\nperformance.\n\nUse this library:\n\n* if you want to define lenses or traversals in your own library, but\ndon't want to depend on @lens@\n* if you are new to lenses and want a small library to play with,\nbut don't want to use something “inferior” or have to relearn things\nwhen/if you switch to @lens@\n\nDon't use this library:\n\n* if you need @Iso@s, @Prism@s, indexed traversals, @at@, @ix@,\nor actually anything else which isn't defined here\n* if you think lenses compose “in the wrong order” (in which case\nyou're looking for @fclabels@)\n\nNote that microlens has /no/ dependencies starting from GHC 7.10\n(base-4.8). Prior to that, it has to depend on transformers-0.2 or above.";
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
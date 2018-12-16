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
        name = "proxy-kindness";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "https://github.com/jberryman/proxy-kindness";
      url = "";
      synopsis = "A library for kind-polymorphic manipulation and inspection of Proxy values";
      description = "It can be useful (especially with @PolyKinds@) to get the\n\\\"bare\\\" type (e.g. @Either@) of some parameterized type\n(e.g. @Either Char Int@). This library provides closed\nclasses that can strip and reapply type arguments, as well\nas useful utility functions. Here are some examples:\n\nForce @Left 1@ to be of type @Either Float a@ using a\npartially-applied 'Proxy'.\n\n>>> let t = (Left 1) `asApplied` (Proxy :: Proxy (Either Float))\n>>> :t t\nt :: Either Float a\n\nDo the same, but illustrating type application with @ap@\n\n>>> let t0 = (Left 1) `asApplied` ((Proxy :: Proxy Either) `ap` (Proxy :: Proxy Float))\n>>> :t t0\nt0 :: Either Float a\n\nForce polymorphic @undefined@ to some polymorphic @Either@\ntype, the base type of @t@ defined above.\n\n>>> let u = undefined `asApplied` (unappliedOf t)\n>>> :t u\nu :: Either a a1";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tagged)
        ];
      };
    };
  }
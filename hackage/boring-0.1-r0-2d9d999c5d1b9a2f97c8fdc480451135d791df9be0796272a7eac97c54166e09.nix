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
        name = "boring";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/boring";
      url = "";
      synopsis = "Boring and Absurd types";
      description = "* @Boring@ types are isomorphic to @()@.\n\n* @Absurd@ types are isomorphic to @Void@.\n\nSee [What does () mean in Haskell -answer by Conor McBride](https://stackoverflow.com/questions/33112439/what-does-mean-in-haskell/33115522#33115522)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.adjunctions)
          (hsPkgs.constraints)
          (hsPkgs.fin)
          (hsPkgs.generics-sop)
          (hsPkgs.tagged)
          (hsPkgs.streams)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.vec)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups)) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs.void);
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      template-haskell = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "recursion-schemes";
        version = "5.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/recursion-schemes/";
      url = "";
      synopsis = "Generalized bananas, lenses and barbed wire";
      description = "Recursion operators, see\n\"Generalized bananas, lenses and barbed wire\"\nby Erik Meijer, Maarten Fokkinga and Ross Paterson.";
      buildType = "Simple";
    };
    components = {
      "recursion-schemes" = {
        depends  = ((((([
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.free)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.2")) (hsPkgs.bifunctors)) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.5") (hsPkgs.ghc-prim)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.10") (hsPkgs.transformers)) ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "7.10")) [
          (hsPkgs.nats)
          (hsPkgs.transformers-compat)
        ]) ++ pkgs.lib.optionals (flags.template-haskell) [
          (hsPkgs.template-haskell)
          (hsPkgs.base-orphans)
          (hsPkgs.th-abstraction)
        ];
      };
      tests = {
        "Expr" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.recursion-schemes)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }
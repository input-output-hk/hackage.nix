{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { template-haskell = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "recursion-schemes"; version = "5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/recursion-schemes/";
      url = "";
      synopsis = "Generalized bananas, lenses and barbed wire";
      description = "Generalized bananas, lenses and barbed wire";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.comonad)
          (hsPkgs.free)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.5") (hsPkgs.ghc-prim)) ++ (pkgs.lib).optionals (flags.template-haskell) [
          (hsPkgs.template-haskell)
          (hsPkgs.base-orphans)
          ];
        };
      tests = {
        "Expr" = {
          depends = [ (hsPkgs.base) (hsPkgs.HUnit) (hsPkgs.recursion-schemes) ];
          };
        };
      };
    }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      semigroups = true;
      tagged = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "distributive";
        version = "0.5.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2016 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/distributive/";
      url = "";
      synopsis = "Distributive functors -- Dual to Traversable";
      description = "Distributive functors -- Dual to Traversable";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ] ++ pkgs.lib.optional (flags.tagged) (hsPkgs.tagged)) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.2" && compiler.version.lt "7.6")) (hsPkgs.ghc-prim)) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") (pkgs.lib.optional (flags.semigroups) (hsPkgs.semigroups));
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.distributive)
            (hsPkgs.doctest)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.distributive)
            (hsPkgs.generic-deriving)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }
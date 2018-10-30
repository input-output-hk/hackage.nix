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
      specVersion = "1.8";
      identifier = {
        name = "linear";
        version = "1.11.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2014 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/linear/";
      url = "";
      synopsis = "Linear Algebra";
      description = "Types and combinators for linear algebra on free vector spaces";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base-orphans)
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.distributive)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.reflection)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.void)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.simple-reflect)
          ];
        };
        "UnitTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.linear)
          ];
        };
      };
    };
  }
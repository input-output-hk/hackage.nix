{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "linear";
        version = "1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/linear/";
      url = "";
      synopsis = "Linear Algebra";
      description = "Types and combinators for linear algebra on free vector spaces";
      buildType = "Custom";
    };
    components = {
      "linear" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.distributive)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.reflection)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
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
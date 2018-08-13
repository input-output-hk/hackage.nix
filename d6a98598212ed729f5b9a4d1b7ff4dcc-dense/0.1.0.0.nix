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
      specVersion = "1.10";
      identifier = {
        name = "dense";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Christopher Chalmers 2016";
      maintainer = "c.chalmers@me.com";
      author = "cchalmers";
      homepage = "";
      url = "";
      synopsis = "Mutable and immutable dense multidimensional arrays";
      description = "Multidimentional array library build on top of the vector package,\nusing indices from the linear package. Native support for mutable\narrays, stencils and parallel computation.";
      buildType = "Simple";
    };
    components = {
      "dense" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytes)
          (hsPkgs.cereal)
          (hsPkgs.comonad)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.primitive)
          (hsPkgs.semigroupoids)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytes)
            (hsPkgs.cereal)
            (hsPkgs.comonad)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.primitive)
            (hsPkgs.semigroupoids)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.vector)
            (hsPkgs.doctest)
            (hsPkgs.simple-reflect)
          ];
        };
      };
    };
  }
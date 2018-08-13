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
      specVersion = "1.2";
      identifier = {
        name = "vector-space";
        version = "0.8.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2012 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/vector-space";
      url = "http://code.haskell.org/vector-space";
      synopsis = "Vector & affine spaces, linear maps, and derivatives";
      description = "/vector-space/ provides classes and generic operations for vector\nspaces and affine spaces.  It also defines a type of infinite towers\nof generalized derivatives.  A generalized derivative is a linear\ntransformation rather than one of the common concrete representations\n(scalars, vectors, matrices, ...).\n\n/Warning/: this package depends on type families working fairly well,\nand requires ghc version at least 6.9.\n\nProject wiki page: <http://haskell.org/haskellwiki/vector-space>\n\n&#169; 2008-2012 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "vector-space" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.MemoTrie)
          (hsPkgs.Boolean)
          (hsPkgs.NumInstances)
        ];
      };
    };
  }
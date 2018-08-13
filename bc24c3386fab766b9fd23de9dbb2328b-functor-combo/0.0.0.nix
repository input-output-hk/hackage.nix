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
        name = "functor-combo";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/functor-combo";
      url = "http://code.haskell.org/~conal/code/functor-combo";
      synopsis = "Functor combinators with tries & zippers";
      description = "Simple functor combinators, their derivatives, and their use for tries\nMaybe split out derivatives and/or tries later.\n";
      buildType = "Simple";
    };
    components = {
      "functor-combo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.TypeCompose)
          (hsPkgs.containers)
          (hsPkgs.data-inttrie)
        ];
      };
    };
  }
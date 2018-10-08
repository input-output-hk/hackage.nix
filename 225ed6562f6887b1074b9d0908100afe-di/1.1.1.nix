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
      specVersion = "1.18";
      identifier = {
        name = "di";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2017-2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "Typeful hierarchical structured logging using di, mtl and df1.";
      description = "Typeful hierarchical structured logging using di, mtl and df1.\n\nThis is meta-package bringing in together things from the\n[di-core](https://hackage.haskell.org/package/di-core),\n[di-monad](https://hackage.haskell.org/package/di-monad),\n[di-handle](https://hackage.haskell.org/package/di-handle) and\n[di-df1](https://hackage.haskell.org/package/di-df1) libraries.\n\nSee the \"Di\" module for more documentation.";
      buildType = "Simple";
    };
    components = {
      "di" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.df1)
          (hsPkgs.di-core)
          (hsPkgs.di-df1)
          (hsPkgs.di-handle)
          (hsPkgs.di-monad)
          (hsPkgs.exceptions)
        ];
      };
    };
  }
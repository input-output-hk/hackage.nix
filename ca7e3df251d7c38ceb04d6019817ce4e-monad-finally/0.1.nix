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
      specVersion = "1.6.0";
      identifier = {
        name = "monad-finally";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2011-2017 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/monad-finally";
      url = "";
      synopsis = "Guard monadic computations with cleanup actions";
      description = "This package provides a generalized version of @Control.Exception.finally@.\nThe cleanup action is run not only on successful termination of the main\ncomputation and on errors, but on any control flow disruption (e.g.\n@mzero@, short-circuiting) that causes the main computation to not produce\na result.";
      buildType = "Simple";
    };
    components = {
      "monad-finally" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-abort)
          (hsPkgs.monad-abort-fd)
          (hsPkgs.monad-control)
        ];
      };
    };
  }
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
        name = "monad-par-extras";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Ryan Newton 2012";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton, Simon Marlow";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "Combinators and extra features for Par monads";
      description = "The modules below provide additional\ndata structures, and other added capabilities\nlayered on top of the 'Par' monad.";
      buildType = "Simple";
    };
    components = {
      "monad-par-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.abstract-par)
          (hsPkgs.cereal)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }
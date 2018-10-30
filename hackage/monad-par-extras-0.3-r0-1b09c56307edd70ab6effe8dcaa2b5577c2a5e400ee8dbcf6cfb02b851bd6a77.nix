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
        name = "monad-par-extras";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow 2011";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "Combinators and extra features for Par monads";
      description = "The modules below provide additional\ndata structures, and other added capabilities\nlayered on top of the 'Par' monad.\n* Finish These\n* Module Descriptions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.abstract-par)
          (hsPkgs.cereal)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.transformers)
        ];
      };
    };
  }
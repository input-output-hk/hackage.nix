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
        name = "netwire";
        version = "5.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "https://github.com/esoeylemez/netwire";
      url = "";
      synopsis = "Functional reactive programming library";
      description = "This library provides interfaces for and implements wire arrows\nuseful both for functional reactive programming (FRP) and locally\nstateful programming (LSP).";
      buildType = "Simple";
    };
    components = {
      "netwire" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.parallel)
          (hsPkgs.profunctors)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.time)
        ];
      };
    };
  }
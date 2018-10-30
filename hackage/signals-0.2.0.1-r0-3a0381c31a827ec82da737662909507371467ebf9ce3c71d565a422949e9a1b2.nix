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
      specVersion = "1.10";
      identifier = {
        name = "signals";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mararon@chalmers.se";
      author = "Markus Aronsson";
      homepage = "";
      url = "";
      synopsis = "Synchronous signal processing for DSLs.";
      description = "A library for expressing digital signal processing algorithms using a deeply\nembedded domain-specific language. The library supports definitions in functional\nprogramming style, reducing the gap between the mathematical description of\nstreaming  algorithms and their implementation. The deep embedding makes it possible\nto generate efficient VHDL code without any overhead associated with the\nhigh-level programming model.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.language-vhdl)
          (hsPkgs.operational-alacarte)
          (hsPkgs.imperative-edsl-vhdl)
          (hsPkgs.observable-sharing)
          (hsPkgs.hashable)
          (hsPkgs.monad-control)
          (hsPkgs.exception-transformers)
          (hsPkgs.exception-mtl)
        ];
      };
    };
  }
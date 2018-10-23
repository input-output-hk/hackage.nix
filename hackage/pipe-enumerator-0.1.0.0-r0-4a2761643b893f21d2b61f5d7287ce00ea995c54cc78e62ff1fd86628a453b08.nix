{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "pipe-enumerator";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Patryk Zadarnowski";
      maintainer = "Patryk Zadarnowski <pat@jantar.org>";
      author = "Patryk Zadarnowski";
      homepage = "https://github.com/zadarnowski/pipe-enumerator";
      url = "";
      synopsis = "Pipes/iteratees bridge library";
      description = "This library provides a bridge between pipe-based and iteratee-based programs.";
      buildType = "Simple";
    };
    components = {
      "pipe-enumerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.enumerator)
          (hsPkgs.pipes)
          (hsPkgs.transformers)
        ];
      };
    };
  }
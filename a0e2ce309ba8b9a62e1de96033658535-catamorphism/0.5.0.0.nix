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
        name = "catamorphism";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, 2015 Frerich Raabe <frerich.raabe@gmail.com>";
      maintainer = "frerich.raabe@gmail.com";
      author = "Frerich Raabe";
      homepage = "http://github.com/frerich/catamorphism";
      url = "";
      synopsis = "A package exposing a helper function for generating catamorphisms.";
      description = "A package exposing a helper function for generating catamorphisms.";
      buildType = "Simple";
    };
    components = {
      "catamorphism" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }
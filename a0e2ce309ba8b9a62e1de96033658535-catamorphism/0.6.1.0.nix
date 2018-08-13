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
        version = "0.6.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, 2015, 2016, 2017, 2018 Frerich Raabe <frerich.raabe@gmail.com>";
      maintainer = "frerich.raabe@gmail.com";
      author = "Frerich Raabe";
      homepage = "https://github.com/frerich/catamorphism";
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
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.catamorphism)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }
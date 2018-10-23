{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "random-derive";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Frerich Raabe <frerich.raabe@gmail.com>";
      maintainer = "frerich.raabe@gmail.com";
      author = "Frerich Raabe";
      homepage = "https://github.com/frerich/random-derive";
      url = "";
      synopsis = "A Template Haskell helper for deriving Random instances";
      description = "A Template Haskell helper for deriving Random instances";
      buildType = "Simple";
    };
    components = {
      "random-derive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.random)
        ];
      };
    };
  }
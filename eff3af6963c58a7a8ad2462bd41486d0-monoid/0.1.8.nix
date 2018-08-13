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
        name = "monoid";
        version = "0.1.8";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/monoid";
      url = "";
      synopsis = "Monoid type classes, designed in modular way, distinguish Monoid from Mempty and Semigroup. This design allows mempty operation don't bring Semigroups related constraints until (<>) is used.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "monoid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
        ];
      };
    };
  }
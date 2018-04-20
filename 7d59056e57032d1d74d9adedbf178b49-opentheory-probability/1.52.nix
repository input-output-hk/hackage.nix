{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "opentheory-probability";
          version = "1.52";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "http://opentheory.gilith.com/?pkg=probability";
        url = "";
        synopsis = "Probability";
        description = "Probability - this package was automatically generated from the\nOpenTheory package probability-1.52";
        buildType = "Simple";
      };
      components = {
        opentheory-probability = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.opentheory-primitive
            hsPkgs.opentheory
          ];
        };
      };
    }
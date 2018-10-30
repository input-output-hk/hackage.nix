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
      specVersion = "1.22";
      identifier = {
        name = "EdisonCore";
        version = "1.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Chris Okasaki";
      homepage = "http://rwd.rdockins.name/edison/home/";
      url = "";
      synopsis = "A library of efficent, purely-functional data structures (Core Implementations)";
      description = "This package provides the core Edison data structure implementations,\nincluding multiple sequence, set, bag, and finite map concrete\nimplementations with various performance characteristics. The\nimplementations in this package have no dependencies other than those\ncommonly bundled with Haskell compilers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.EdisonAPI)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
    };
  }
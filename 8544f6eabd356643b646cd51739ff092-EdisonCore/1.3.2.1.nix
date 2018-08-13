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
        name = "EdisonCore";
        version = "1.3.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Chris Okasaki";
      homepage = "http://rwd.rdockins.name/edison/home/";
      url = "";
      synopsis = "A library of efficient, purely-functional data structures (Core Implementations)";
      description = "This package provides the core Edison data structure implementations,\nincluding multiple sequence, set, bag, and finite map concrete\nimplementations with various performance characteristics. The\nimplementations in this package have no dependencies other than those\ncommonly bundled with Haskell compilers.";
      buildType = "Simple";
    };
    components = {
      "EdisonCore" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.EdisonAPI)
          (hsPkgs.containers)
          (hsPkgs.array)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
    };
  }
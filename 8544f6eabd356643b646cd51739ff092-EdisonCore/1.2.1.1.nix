{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "EdisonCore";
          version = "1.2.1.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "robdockins AT fastmail DOT fm";
        author = "Chris Okasaki";
        homepage = "http://www.cs.princeton.edu/~rdockins/edison/home/";
        url = "";
        synopsis = "A library of efficent, purely-functional data structures (Core Implementations)";
        description = "This package provides the core Edison data structure implementations,\nincluding multiple sequence, set, bag, and finite map concrete\nimplementations with various performance characteristics. The\nimplementations in this package have no dependencies other than those\ncommonly bundled with Haskell compilers.";
        buildType = "Simple";
      };
      components = {
        EdisonCore = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.EdisonAPI
          ] ++ pkgs.lib.optionals compiler.isGhc [
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "EdisonAPI";
          version = "1.2.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "robdockins AT fastmail DOT fm";
        author = "Chris Okasaki";
        homepage = "";
        url = "";
        synopsis = "A library of efficient, purely-functional data structures (API)";
        description = "This package provides the typeclasses that form the Edison\nAPI and other common utility modules.";
        buildType = "Custom";
      };
      components = {
        "EdisonAPI" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
          ];
        };
      };
    }
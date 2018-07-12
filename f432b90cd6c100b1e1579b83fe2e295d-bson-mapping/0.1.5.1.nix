{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bson-mapping";
          version = "0.1.5.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Francesco Mazzoli <f@mazzo.li>";
        author = "Francesco Mazzoli <f@mazzo.li>";
        homepage = "";
        url = "";
        synopsis = "Mapping between BSON and algebraic data types.";
        description = "This module defines a Bson class to convert data types to Bson and to convert Bson documents back to datatypes, along with template haskell functions to easily derive the instance.";
        buildType = "Simple";
      };
      components = {
        "bson-mapping" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.th-lift
            hsPkgs.bson
            hsPkgs.text
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.3";
        identifier = {
          name = "ieee-utils";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matt Morrow";
        maintainer = "Matt Morrow <mjm2002@gmail.com>";
        author = "Matt Morrow, Sterling Clover";
        homepage = "";
        url = "";
        synopsis = "ieee-utils";
        description = "IEEE 754 (Standard for Binary Floating-Point Arithmetic) Utilities.";
        buildType = "Simple";
      };
      components = {
        "ieee-utils" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
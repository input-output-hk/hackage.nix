{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "floating-bits";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Anselm Jonas Scholl";
        maintainer = "anselm.scholl@tu-harburg.de";
        author = "Anselm Jonas Scholl";
        homepage = "";
        url = "";
        synopsis = "Conversions between floating and integral values.";
        description = "A small library to cast floating point values to integral values and back preserving the bit-pattern.";
        buildType = "Simple";
      };
      components = {
        floating-bits = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
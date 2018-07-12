{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "diet";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Morris";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/diet";
        url = "";
        synopsis = "Discrete Interval Encoding Tree";
        description = "Discrete Interval Encoding Tree described by Martin Erwig in /Diets for Fat Sets, January 1993/.";
        buildType = "Simple";
      };
      components = {
        "diet" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }
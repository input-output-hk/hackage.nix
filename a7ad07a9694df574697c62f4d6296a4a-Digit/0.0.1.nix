{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Digit";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "";
        url = "";
        synopsis = "A data-type representing digits 0-9";
        description = "A data-type with 10 nullary constructors";
        buildType = "Simple";
      };
      components = {
        Digit = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
          ];
        };
      };
    }
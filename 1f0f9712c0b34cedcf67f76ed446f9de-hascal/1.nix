{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hascal";
          version = "1";
        };
        license = "LicenseRef-GPL";
        copyright = "© 2012 Mekeor Melire";
        maintainer = "Mekeor Melire <mekeor.melire@googlemail.com>";
        author = "Mekeor Melire";
        homepage = "https://github.com/MekeorMelire/hascal";
        url = "";
        synopsis = "a minimal, extensible and precise calculator";
        description = "Hascal is a minimal calculator with infix-operations\nsupporting addition, subtraction, division, multiplication\nand exponentiation. Brackets are not supported yet.\nFuthermore, it's easy to add custom operators.";
        buildType = "Simple";
      };
      components = {
        hascal = {
          depends  = [
            hsPkgs.base
            hsPkgs.numbers
          ];
        };
        exes = {
          hascal = {
            depends  = [
              hsPkgs.base
              hsPkgs.numbers
            ];
          };
        };
      };
    }
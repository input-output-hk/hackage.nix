{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Tahin";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Moritz Schulte";
        maintainer = "mtesseract@silverratio.net";
        author = "Moritz Schulte";
        homepage = "http://github.com/mtesseract/Tahin#readme";
        url = "";
        synopsis = "Tahin Password Generator";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        Tahin = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        exes = {
          tahin = {
            depends  = [
              hsPkgs.base
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.haskeline
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
        };
      };
    }
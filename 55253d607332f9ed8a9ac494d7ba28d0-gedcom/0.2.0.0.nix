{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gedcom";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Callum Lowcay";
        maintainer = "cwslowcay@gmail.com";
        author = "Callum Lowcay";
        homepage = "https://github.com/CLowcay/hs-gedcom";
        url = "";
        synopsis = "Parser for the GEDCOM genealogy file format.";
        description = "A parser for the legacy GEDCOM 5.5 file format. GEDCOM is\na widely used file format in genealogy.";
        buildType = "Simple";
      };
      components = {
        gedcom = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.megaparsec
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.text-all
            hsPkgs.time
          ];
        };
        tests = {
          gedcom-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.gedcom
              hsPkgs.hspec
              hsPkgs.text-all
              hsPkgs.megaparsec
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hchesslib";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "miikapetteri@gmail.com";
        author = "Miika-Petteri Matikainen";
        homepage = "https://github.com/nablaa/hchesslib";
        url = "";
        synopsis = "Chess library";
        description = "Library implementing chess rules.";
        buildType = "Simple";
      };
      components = {
        "hchesslib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.attoparsec
            hsPkgs.text
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.hchesslib
            ];
          };
          "hlint" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
              hsPkgs.hchesslib
            ];
          };
        };
      };
    }
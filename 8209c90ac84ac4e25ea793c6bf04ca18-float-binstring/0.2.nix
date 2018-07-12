{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "float-binstring";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2013,2014 Antonio Nikishaev";
        maintainer = "Antonio Nikishaev <me@lelf.lu>";
        author = "Antonio Nikishaev <me@lelf.lu>";
        homepage = "https://github.com/llelf/float-binstring";
        url = "";
        synopsis = "C99 printf \"%a\" style formatting and parsing";
        description = "Format and parse floating point values as C99 printf/scanf with\nformat string %a do";
        buildType = "Simple";
      };
      components = {
        "float-binstring" = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
            hsPkgs.attoparsec
            hsPkgs.text
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.split
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }
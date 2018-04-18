{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-slice";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Paul Koerbitz 2013";
        maintainer = "paul.koerbitz@gmail.com";
        author = "Paul Koerbitz";
        homepage = "https://github.com/paulkoerbitz/language-slice";
        url = "";
        synopsis = "AST and parser for the ZeroC Slice language (Specification language for ICE)";
        description = "AST and parser for the ZeroC Slice language (Specification language for ICE)";
        buildType = "Simple";
      };
      components = {
        language-slice = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
        tests = {
          test-parser = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.bytestring
              hsPkgs.language-slice
            ];
          };
        };
      };
    }
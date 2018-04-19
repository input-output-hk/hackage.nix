{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "string-conversions";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "soenkehahn@gmail.com";
        author = "Sönke Hahn";
        homepage = "https://github.com/soenkehahn/string-conversions#readme";
        url = "";
        synopsis = "Simplifies dealing with different types for strings";
        description = "Provides a simple type class for converting values of different string types into values of other string types.";
        buildType = "Simple";
      };
      components = {
        string-conversions = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.hspec
              hsPkgs.quickcheck-instances
              hsPkgs.deepseq
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      quickcheck = false;
      criterion = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "weighted-regexp";
          version = "0.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sebastian Fischer";
        author = "Thomas Wilke, Frank Huch, Sebastian Fischer";
        homepage = "http://sebfisch.github.com/haskell-regexp";
        url = "";
        synopsis = "Weighted Regular Expression Matcher";
        description = "Haskell implementation of a weighted regular expression\nmatcher with linear worst-case time and space bounds.";
        buildType = "Simple";
      };
      components = {
        weighted-regexp = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
        exes = {
          quickcheck-re = {
            depends  = optionals _flags.quickcheck [
              hsPkgs.base
              hsPkgs.QuickCheck
            ];
          };
          criterion-re = {
            depends  = optionals _flags.criterion [
              hsPkgs.base
              hsPkgs.criterion
            ];
          };
        };
      };
    }
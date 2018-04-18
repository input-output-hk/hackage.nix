{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rope-utf16-splay";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2018 Olle Fredriksson";
        maintainer = "fredriksson.olle@gmail.com";
        author = "Olle Fredriksson";
        homepage = "https://github.com/ollef/rope-utf16-splay";
        url = "";
        synopsis = "Ropes optimised for updating using UTF-16 code units and\nrow/column pairs.";
        description = "Ropes optimised for updating using UTF-16 code units and\nrow/column pairs.  This implementation uses splay trees\ninstead of the usual finger trees. According to my\nbenchmarks, splay trees are faster in most situations.";
        buildType = "Simple";
      };
      components = {
        rope-utf16-splay = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.rope-utf16-splay
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
            ];
          };
        };
      };
    }
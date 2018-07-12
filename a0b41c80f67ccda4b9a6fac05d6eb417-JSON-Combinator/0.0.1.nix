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
          name = "JSON-Combinator";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tony Morris";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "";
        url = "";
        synopsis = "A combinator library on top of Text.JSON";
        description = "A combinator library on top of Text.JSON http://hackage.haskell.org/package/JSONb";
        buildType = "Simple";
      };
      components = {
        "JSON-Combinator" = {
          depends  = [
            hsPkgs.base
            hsPkgs.JSONb
            hsPkgs.bytestring
            hsPkgs.bytestring-trie
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
          ];
        };
      };
    }
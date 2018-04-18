{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "twitter-types";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Takahiro HIMURA <taka@himura.jp>";
        author = "Takahiro HIMURA";
        homepage = "https://github.com/himura/twitter-types";
        url = "";
        synopsis = "Twitter JSON parser and types";
        description = "This package uses enumerator package for access Twitter API.";
        buildType = "Simple";
      };
      components = {
        twitter-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.test-framework
              hsPkgs.test-framework-th-prime
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.derive
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.twitter-types
            ];
          };
        };
      };
    }
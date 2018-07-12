{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      time15 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "twitter-types";
          version = "0.7.2.2";
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
        "twitter-types" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.unordered-containers
          ] ++ (if _flags.time15
            then [ hsPkgs.time ]
            else [
              hsPkgs.time
              hsPkgs.old-locale
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.ghc-prim;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.derive
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.twitter-types
              hsPkgs.old-locale
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hedn";
          version = "0.1.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Alexander Bondarenko";
        maintainer = "aenor.realm@gmail.com";
        author = "Alexander Bondarenko";
        homepage = "https://bitbucket.org/dpwiz/hedn";
        url = "";
        synopsis = "EDN parsing and encoding";
        description = "A EDN parsing and encoding library inspired by Data.Aeson.\n\nBased on specs published at <https://github.com/edn-format/edn>.";
        buildType = "Simple";
      };
      components = {
        hedn = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.stringsearch
            hsPkgs.mtl
            hsPkgs.deepseq
            hsPkgs.old-locale
            hsPkgs.time
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hedn
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.template-haskell
              hsPkgs.time
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
        };
      };
    }
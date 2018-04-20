{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test-doctest = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cli-builder";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "2016 uecmma";
        maintainer = "developer@mma.club.uec.ac.jp";
        author = "uecmma";
        homepage = "https://github.com/uecmma/haskell-library-collections/tree/master/cli-builder";
        url = "";
        synopsis = "Simple project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        cli-builder = {
          depends  = [
            hsPkgs.base
            hsPkgs.either
            hsPkgs.exceptions
            hsPkgs.optparse-applicative
            hsPkgs.transformers
          ];
        };
        tests = {
          spec-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.cli-builder
              hsPkgs.QuickCheck
              hsPkgs.hspec
            ];
          };
          doc-test = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctest)) [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filemanip
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "descript-lang";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "2018 Jakob Hain";
        maintainer = "jakobeha2@gmail.com";
        author = "Jakob Hain";
        homepage = "https://bitbucket.org/jakobeha/descript-lang/src/master/README.md";
        url = "";
        synopsis = "Library, interpreter, and CLI for Descript programming language.";
        description = "Please see the README at <https://bitbucket.org/jakobeha/descript-lang/src/master/README.md>";
        buildType = "Simple";
      };
      components = {
        "descript-lang" = {
          depends  = [
            hsPkgs.array
            hsPkgs.autoexporter
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.hashtables
            hsPkgs.megaparsec
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          "descript-cli" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.array
              hsPkgs.autoexporter
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.descript-lang
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.fsnotify
              hsPkgs.hashtables
              hsPkgs.haskell-lsp
              hsPkgs.hslogger
              hsPkgs.lens
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.network-uri
              hsPkgs.optparse-applicative
              hsPkgs.rainbow
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.yi-rope
            ];
          };
        };
        tests = {
          "descript-lang-test" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.autoexporter
              hsPkgs.base
              hsPkgs.bifunctors
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.descript-lang
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashtables
              hsPkgs.hspec
              hsPkgs.megaparsec
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.yaml
            ];
          };
        };
      };
    }
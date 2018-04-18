{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      static = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nirum";
          version = "0.3.2";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2016–2018 Nirum team";
        maintainer = "Nirum team";
        author = "Nirum team";
        homepage = "http://nirum.org/";
        url = "";
        synopsis = "IDL compiler and RPC/distributed object framework for microservices";
        description = "Nirum is an IDL compiler and RPC/distributed object framework for microservices, built on top of the modern Web server technologies such as RESTful HTTP and JSON.\nYou can find how the language looks like from source codes in the examples/ directory.\nSee also README.md for more details.";
        buildType = "Simple";
      };
      components = {
        nirum = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.cmark
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.email-validate
            hsPkgs.filepath
            hsPkgs.fsnotify
            hsPkgs.heterocephalus
            hsPkgs.htoml
            hsPkgs.interpolatedstring-perl6
            hsPkgs.megaparsec
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.semver
            hsPkgs.shakespeare
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.uri
          ];
        };
        exes = {
          nirum = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.email-validate
              hsPkgs.filepath
              hsPkgs.htoml
              hsPkgs.interpolatedstring-perl6
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.nirum
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.semver
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
        tests = {
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.email-validate
              hsPkgs.filepath
              hsPkgs.hlint
              hsPkgs.htoml
              hsPkgs.interpolatedstring-perl6
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.semver
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.email-validate
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.hspec-meta
              hsPkgs.htoml
              hsPkgs.interpolatedstring-perl6
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.nirum
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.process
              hsPkgs.semigroups
              hsPkgs.semver
              hsPkgs.string-qq
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
          targets = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.email-validate
              hsPkgs.filepath
              hsPkgs.htoml
              hsPkgs.interpolatedstring-perl6
              hsPkgs.megaparsec
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.semver
              hsPkgs.text
              hsPkgs.turtle
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }
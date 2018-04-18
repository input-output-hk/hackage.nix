{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      devel = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay";
          version = "0.10.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Chris Done";
        maintainer = "chrisdone@gmail.com, adam@edea.se";
        author = "Chris Done, Adam Bergmark";
        homepage = "http://fay-lang.org/";
        url = "";
        synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
        description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Add TCO optimization.\n\n* Added uncurrying optimization for non-partial applications.\n\n* Add simple benchmarking program.\n\n* Add SVG logo.\n\n* Added Defined type and appropriate serialization.\n\n* Treat Maybe as a nullable value in conversions.\n\n* Added oscillator example.\n\n* Add optimization flag.\n* Support tuple serialization.\n* Fix list length in pats (closes #145).\n\n* Name resolution and some export list support.\n* Add codeworld space invaders example.\n\n* NoImplicitPrelude is now passed automatically to GHC. Does not break code that uses the pragma (see #134).\n\n* Add support for list comprehensions using desugaring from Haskell report. See #40 and #132.\n\n* Make error messages a tiny bit friendlier, and some general house-keeping.\n\n* Support negation expressions (see #116).\n\n* Rewrite readFromFay using only Data, no Read/Show requirements (see #112).\n\nSee full history at: <https://github.com/faylang/fay/commits>";
        buildType = "Custom";
      };
      components = {
        fay = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskell-src-exts
            hsPkgs.aeson
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.attoparsec
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.utf8-string
            hsPkgs.bytestring
            hsPkgs.pretty-show
            hsPkgs.data-default
            hsPkgs.safe
            hsPkgs.language-ecmascript
            hsPkgs.syb
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.groom
            hsPkgs.random
          ] ++ optionals (!_flags.devel) [
            hsPkgs.HUnit
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.optparse-applicative
            hsPkgs.split
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-th
          ];
        };
        exes = {
          fay = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.haskell-src-exts
              hsPkgs.aeson
              hsPkgs.syb
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.pretty-show
              hsPkgs.process
              hsPkgs.data-default
              hsPkgs.safe
              hsPkgs.language-ecmascript
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.groom
              hsPkgs.random
              hsPkgs.optparse-applicative
              hsPkgs.split
              hsPkgs.haskeline
            ];
          };
          fay-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.haskell-src-exts
              hsPkgs.aeson
              hsPkgs.syb
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.pretty-show
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.data-default
              hsPkgs.safe
              hsPkgs.language-ecmascript
              hsPkgs.groom
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th
            ];
          };
          fay-docs = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.haskell-src-exts
              hsPkgs.aeson
              hsPkgs.syb
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.attoparsec
              hsPkgs.vector
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.pretty-show
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.blaze-html
              hsPkgs.blaze-markup
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.data-default
              hsPkgs.safe
              hsPkgs.language-ecmascript
              hsPkgs.groom
              hsPkgs.random
            ];
          };
        };
      };
    }
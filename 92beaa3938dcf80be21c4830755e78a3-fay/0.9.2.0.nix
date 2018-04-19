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
          version = "0.9.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "http://fay-lang.org/";
        url = "";
        synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
        description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Fix name encoding.\n\n* Add content-type to HTML generation.\n\n* Add calculator example.\n\n* Support built-in operators as (+), (*), etc.\n\n* Fix self-referential thunks (see #89).\n\n* Don't import modules twice.\n\n* Handle where bindings in function definitions.\n\n* Support record updates.\n\n* Move to GHC type-checking (with --no-ghc).\n\n* Remove invalid chars from UTF-8 tests.\n\n* Remove --autorun, now it's the default.\n\n* Fix nullary constructor comparison.\n\n* Replace . with \$ in module name generation.\n\n* Reverse -fdevel flag.\n\n* Skip type declarations in where.\n\n* Add true/false to keywords.\n\n* Add laziness back to infix operators.\n\n* Switch to applicative parsing of options.\n\n* Fix parens in conversion functions.\n\nSee full history at: <https://github.com/chrisdone/fay/commits>";
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
          ] ++ pkgs.lib.optionals _flags.devel [
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
              hsPkgs.unordered-containers
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
              hsPkgs.unordered-containers
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
              hsPkgs.unordered-containers
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
            ];
          };
        };
      };
    }
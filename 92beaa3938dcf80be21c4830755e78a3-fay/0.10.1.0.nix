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
          version = "0.10.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Chris Done";
        maintainer = "chrisdone@gmail.com, adam@edea.se";
        author = "Chris Done, Adam Bergmark";
        homepage = "http://fay-lang.org/";
        url = "";
        synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
        description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Enable strict list for arithmetic sequences optimisation only when compiler optimise flag set.\n\n* Add print and putStrLn to the Prelude\n\n* Add list utility functions from the standard Prelude\n\n* Test optimized as well as unoptimized builds.\n\n* Standard precendence and associativity for infix operators\n\n* Add function utilities from Prelude, including seq\n\n* Add math functions in Prelude\n\n* Add support for sections (desugaring to lambdas)\n\n* Added example of the ContT and Deferred monad, sleep and readFile.\n\n* Add more of the prelude, including error and a lot of math stuff.\n\n* Remove needs for module declarations in modules that define main.\n\n* Support enumThen ([1,2..]) style lists.\n\n* Add support for enumFromThenTo ([1,2..10]) lists.\n\nSee full history at: <https://github.com/faylang/fay/commits>";
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
          ] ++ pkgs.lib.optionals (!_flags.devel) [
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
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fay";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://fay-lang.org/";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Rewrite home page/docs JS in Fay. Because dogfood.\n\n* Support bool unseralization.\n\n* Export more functions from stdlib.\n\n* Add fixity to monad.\n\n* Replace home page JS with Fay.\n\n* Another FFI change. BREAKING CHANGE, LOOK AT THE FFI AND EXAPLES AGAIN.\n\n* Handle list unserializing.\n\n* Fix dom.hs.\n\n* Add simple sum benchmark, will expand later (refs #11).\n\n* Fix auto-exports.\n\n* Fix docs for silly haddock syntax.\n\n* Support avoiding Google Closure name mangling.\n\nSee full history at: <https://github.com/chrisdone/fay/commits>";
      buildType = "Custom";
    };
    components = {
      "fay" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.json)
          (hsPkgs.pretty-show)
          (hsPkgs.data-default)
          (hsPkgs.HUnit)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.time)
        ];
      };
      exes = {
        "fay" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.json)
            (hsPkgs.process)
            (hsPkgs.data-default)
          ];
        };
        "fay-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.json)
            (hsPkgs.HUnit)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.data-default)
          ];
        };
        "fay-docs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.json)
            (hsPkgs.HUnit)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }
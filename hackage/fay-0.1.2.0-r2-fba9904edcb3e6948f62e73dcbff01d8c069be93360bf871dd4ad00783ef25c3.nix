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
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://fay-lang.org/";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal build\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Some tidying and module export support.\n\n* Export an object w/ export lists. This shouldn't break existing uses, but will break API uses (refs #8).\n\n* Tidy up code a bit, switch to a newtype monad.\n\n* Add CHANGELOG and RELEASE NOTES for Hackage update.\n\nSee full history at: <https://github.com/chrisdone/fay/commits>";
      buildType = "Simple";
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
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
        version = "0.6.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "http://fay-lang.org/";
      url = "";
      synopsis = "A compiler for Fay, a Haskell subset that compiles to JavaScript.";
      description = "Fay is a proper subset of Haskell which can be compiled (type-checked)\nwith GHC, and compiled to JavaScript. It is lazy, pure, with a Fay monad,\nan FFI, tail-recursion optimization (experimental). It implements no type\nsystem, for type-checking you should use GHC.\n\n/Documentation/\n\nSee documentation at <http://fay-lang.org/> or build your own documentation with:\n\n> \$ cabal unpack fay\n> \$ cd fay-*\n> \$ cabal install\n> \$ dist/build/fay-docs/fay-docs\n\n\n/Examples/\n\nSee <http://fay-lang.org/#examples>.\n\n/Release Notes/\n\n* Added Compiler.compileFile to compile a file without writing to disk\n\n* abstracted out constructorName function\n\n* fix fixed RecConstr\n\n* Fix RecConstr to avoid name conflicts.\n\n* BREAKING CHANGES, READ THIS COMMIT.\n\n* Added the new flags to the cmdline docs\n\n* --output=file to specify where the result should be placed\n\n* Exporting Language.Fay.Compiler\n\n* Added the cmdline flag -include=dir1[,..dirN] which will look in the specified directories for imports\n\n* CompileConfig now contains configDirectoryIncludes allowing imports to be located separately from where the base file\n\n* Add Paths_fay to cabal.\n\n* Update docs and fix runtime regressions.\n\n* Fix FFI callbacks when too many arguments are provided.\n\n* Fix patterns snippet.\n\n* Fixed a bug where  would produce invalid code. And some minor refactorings.\n\n* Records are now stored in CompileState, _fields dropped from record representation\n\nSee full history at: <https://github.com/chrisdone/fay/commits>";
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
          (hsPkgs.safe)
          (hsPkgs.language-javascript)
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
            (hsPkgs.safe)
            (hsPkgs.language-javascript)
            (hsPkgs.directory)
            (hsPkgs.filepath)
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
            (hsPkgs.safe)
            (hsPkgs.language-javascript)
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
            (hsPkgs.safe)
            (hsPkgs.language-javascript)
          ];
        };
      };
    };
  }
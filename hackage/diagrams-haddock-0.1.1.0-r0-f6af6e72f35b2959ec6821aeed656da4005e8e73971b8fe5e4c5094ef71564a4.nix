{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "diagrams-haddock";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Preprocessor for embedding diagrams in Haddock documentation";
      description = "diagrams-haddock is a tool for compiling embedded inline\ndiagrams code in Haddock documentation, for an\neasy way to spice up your documentation with\ndiagrams.  Just create some diagrams code using\nspecial markup, run diagrams-haddock, and ensure\nthe resulting image files are installed along\nwith your documentation.  For complete\ndocumentation and examples, see\n<https://github.com/diagrams/diagrams-haddock/blob/master/README.md>.\n\nFor a good example of a package making use of\ndiagrams-haddock, see the diagrams-contrib\npackage\n(<http://hackage.haskell.org/package/diagrams%2Dcontrib>).";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.bytestring)
          (hsPkgs.strict)
          (hsPkgs.parsec)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.blaze-svg)
          (hsPkgs.diagrams-builder)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-svg)
          (hsPkgs.vector-space)
          (hsPkgs.lens)
          (hsPkgs.cpphs)
          (hsPkgs.cautious-file)
          (hsPkgs.uniplate)
          (hsPkgs.text)
        ];
      };
      exes = {
        "diagrams-haddock" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.diagrams-haddock)
            (hsPkgs.cmdargs)
            (hsPkgs.Cabal)
            (hsPkgs.cpphs)
          ];
        };
      };
      tests = {
        "diagrams-haddock-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.parsec)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.lens)
            (hsPkgs.diagrams-haddock)
          ];
        };
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dynamic-cabal";
        version = "0.3.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013-2015 Benno Fünfstück";
      maintainer = "Benno Fünfstück <benno.fuenfstueck@gmail.com>";
      author = "Benno Fünfstück";
      homepage = "http://github.com/bennofs/dynamic-cabal/";
      url = "";
      synopsis = "Access the functions from the Cabal library without depending on it";
      description = "This library allows you to extract information from cabal files without depending on the Cabal library. Since\nGHC currently depends on Cabal, it's difficult to directly use Cabal if you also like to use the GHC API. This package\nsolves that problem by using the GHC API itself to interface with Cabal, which means that it can use whatever Cabal version\nthe user has installed, at run time (the version is not fixed at compile time). For a short tutorial, see\n<https://github.com/bennofs/dynamic-cabal>.\nNote: As of GHC 7.10, the ghc library no longer depends on Cabal. So you only need this package if you want to support older GHC versions.";
      buildType = "Custom";
    };
    components = {
      "dynamic-cabal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.haskell-generate)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.void)
          (hsPkgs.data-default)
        ];
      };
      tests = {
        "dynamic-cabal-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.dynamic-cabal)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.tasty-th)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }
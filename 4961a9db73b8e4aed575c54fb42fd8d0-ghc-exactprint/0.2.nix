{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ghc-exactprint";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "ExactPrint for GHC";
      description = "Using the API Annotations available from GHC 7.10 RC2, this\nlibrary provides a means to round trip any* code that can\nbe compiled by GHC\n\n* any currently excludes anything using CPP or lhs.\n\nThe dependency footprint is deliberately kept small so that\nit can easily be tested against GHC HEAD\n\nNote: requires GHC 7.10 RC2 or later";
      buildType = "Simple";
    };
    components = {
      "ghc-exactprint" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-syb-utils)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.free)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-exactprint)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-syb-utils)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.syb)
          ];
        };
      };
    };
  }
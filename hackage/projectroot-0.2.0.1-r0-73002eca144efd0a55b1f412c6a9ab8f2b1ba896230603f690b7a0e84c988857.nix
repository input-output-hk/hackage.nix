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
        name = "projectroot";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/haskell-projectroot";
      url = "";
      synopsis = "Bindings to the projectroot C logic";
      description = "Simple way of finding the root of a project given an\nentry-point. This module provides bindings to the\n<https://github.com/yamadapc/projectroot projectroot> C library";
      buildType = "Simple";
    };
    components = {
      "projectroot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
        ];
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.projectroot)
          ];
        };
      };
    };
  }
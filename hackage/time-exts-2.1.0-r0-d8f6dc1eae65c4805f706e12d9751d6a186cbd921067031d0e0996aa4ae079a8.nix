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
      specVersion = "1.16.0";
      identifier = {
        name = "time-exts";
        version = "2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, Enzo Haussecker. All rights reserved.";
      maintainer = "Enzo Haussecker <enzo@ucsd.edu>";
      author = "Enzo Haussecker <enzo@ucsd.edu>";
      homepage = "https://github.com/enzoh/time-exts";
      url = "";
      synopsis = "Efficient Timestamps";
      description = "Haskell timestamps in various bit length and granularity.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.containers)
          (hsPkgs.convertible)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.fclabels)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timezone-olson)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "test-time-exts" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bindings-DSL)
            (hsPkgs.containers)
            (hsPkgs.convertible)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.fclabels)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.timezone-olson)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs)
          ];
        };
      };
    };
  }
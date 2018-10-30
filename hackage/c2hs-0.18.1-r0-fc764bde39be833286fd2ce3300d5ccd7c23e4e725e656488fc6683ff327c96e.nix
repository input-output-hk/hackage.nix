{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base3 = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "c2hs";
        version = "0.18.1";
      };
      license = "GPL-2.0-only";
      copyright = "Copyright (c) 1999-2007 Manuel M T Chakravarty\n2005-2013 Duncan Coutts\n2008      Benedikt Huber";
      maintainer = "chak@cse.unsw.edu.au, duncan@community.haskell.org, ian@skybluetrades.net";
      author = "Manuel M T Chakravarty";
      homepage = "https://github.com/haskell/c2hs";
      url = "";
      synopsis = "C->Haskell FFI tool that gives some cross-language type safety";
      description = "C->Haskell assists in the development of Haskell bindings to C\nlibraries. It extracts interface information from C header\nfiles and generates Haskell code with foreign imports and\nmarshaling. Unlike writing foreign imports by hand (or using\nhsc2hs), this ensures that C functions are imported with the\ncorrect Haskell types.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "c2hs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.language-c)
            (hsPkgs.filepath)
            (hsPkgs.dlist)
          ] ++ (if flags.base3
            then [
              (hsPkgs.base)
              (hsPkgs.process)
              (hsPkgs.directory)
              (hsPkgs.array)
              (hsPkgs.containers)
              (hsPkgs.pretty)
            ]
            else [ (hsPkgs.base) ]);
        };
        "regression-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "test-bugs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs)
          ];
        };
        "test-system" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs)
          ];
        };
      };
    };
  }
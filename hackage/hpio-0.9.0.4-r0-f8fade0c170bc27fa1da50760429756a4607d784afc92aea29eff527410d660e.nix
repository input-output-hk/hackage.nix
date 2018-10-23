{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      examples = true;
      linux-bbone-tests = false;
      test-doctests = true;
      test-hlint = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hpio";
        version = "0.9.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Quixoftic, LLC";
      maintainer = "Drew Hess <dhess-src@quixoftic.com>";
      author = "Drew Hess <dhess-src@quixoftic.com>";
      homepage = "https://github.com/quixoftic/hpio#readme";
      url = "";
      synopsis = "Monads for GPIO in Haskell";
      description = "This package provides an embedded DSL for writing cross-platform\nGPIO programs in Haskell. Currently only Linux is supported (via the\n@sysfs@ filesystem), but other Unix GPIO platforms will be supported\nin the future.\n\nMonads and low-level actions are also provided for each supported\nplatform's native GPIO API, if you want to program directly to\nthe platform API.\n\nExample programs are provided in the 'examples' directory of the\nsource code distribution. There is also a \"System.GPIO.Tutorial\"\nmodule, which explains how to use the cross-platform DSL.";
      buildType = "Simple";
    };
    components = {
      "hpio" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.protolude)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
          (hsPkgs.unix-bytestring)
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
        ];
      };
      exes = {
        "hpio-example" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hpio)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "hpio-reader-example" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hpio)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "hpio-sysfs-example" = {
          depends  = pkgs.lib.optionals (!(!flags.examples)) [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hpio)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.protolude)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "doctest" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests || compiler.isGhc && compiler.version.lt "7.10")) [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.protolude)
          ];
        };
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
            (hsPkgs.protolude)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hpio)
            (hsPkgs.hspec)
            (hsPkgs.protolude)
          ];
        };
      };
    };
  }
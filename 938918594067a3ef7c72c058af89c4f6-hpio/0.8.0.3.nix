{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      linux-bbone-tests = false;
      test-doctests = true;
      test-hlint = true;
      examples = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hpio";
          version = "0.8.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Drew Hess";
        maintainer = "Drew Hess <src@drewhess.com>";
        author = "Drew Hess <src@drewhess.com>";
        homepage = "https://github.com/dhess/hpio";
        url = "";
        synopsis = "Monads for GPIO in Haskell";
        description = "This package provides an embedded DSL for writing cross-platform\nGPIO programs in Haskell. Currently only Linux is supported (via the\n@sysfs@ filesystem), but other Unix GPIO platforms will be supported\nin the future.\n\nMonads and low-level actions are also provided for each supported\nplatform's native GPIO API, if you want to program directly to\nthe platform API.\n\nExample programs are provided in the 'examples' directory of the\nsource code distribution. There is also a \"System.GPIO.Tutorial\"\nmodule, which explains how to use the cross-platform DSL.";
        buildType = "Simple";
      };
      components = {
        hpio = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.mtl-compat
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.unix
            hsPkgs.unix-bytestring
          ];
        };
        exes = {
          hpio-sysfs-example = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.base-compat
              hsPkgs.hpio
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.optparse-applicative
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ];
          };
          hpio-example = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.base-compat
              hsPkgs.exceptions
              hsPkgs.hpio
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.optparse-applicative
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ];
          };
          hpio-reader-example = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.base-compat
              hsPkgs.exceptions
              hsPkgs.hpio
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.optparse-applicative
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ];
          };
        };
        tests = {
          hlint = {
            depends  = pkgs.lib.optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          doctest = {
            depends  = pkgs.lib.optionals (!(!_flags.test-doctests || compiler.isGhc && compiler.version.lt "7.10")) [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
          spec = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.async
              hsPkgs.base-compat
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.transformers-compat
              hsPkgs.unix
              hsPkgs.unix-bytestring
            ];
          };
        };
      };
    }
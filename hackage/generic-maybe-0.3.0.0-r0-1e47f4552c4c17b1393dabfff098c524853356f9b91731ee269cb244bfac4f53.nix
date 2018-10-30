{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-doctests = true;
      test-hlint = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "generic-maybe";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/generic-maybe";
      url = "";
      synopsis = "A generic version of Data.Maybe";
      description = "This module is a drop in replacement for 'Data.Maybe'. It generalizes\nthe functions to any types that share the same \\\"sum of products\\\" view\nof 'Maybe'.\n\nTo use the module for you type, enable GHC's DeriveGeneric extension and\nderive a Generic instance for your type.\n\n> import GHC.Generics\n>\n> data Result a = Success a | Fail\n>    deriving (Show, Generic)\n\nAfter which you can use the functions, like your type was 'Data.Maybe.Maybe'\n\n>> fromMaybe 'a' Fail\n>'a'\n\n>> fromMaybe 'a' \$ Success 'b'\n>'b'";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.deepseq)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.generic-deriving)
            (hsPkgs.mtl)
            (hsPkgs.nats)
            (hsPkgs.parallel)
            (hsPkgs.semigroups)
            (hsPkgs.simple-reflect)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "tasty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.ghc-prim)
            (hsPkgs.deepseq)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }
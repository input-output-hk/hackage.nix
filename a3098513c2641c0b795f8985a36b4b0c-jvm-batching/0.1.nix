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
        name = "jvm-batching";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 LeapYear Technologies";
      maintainer = "facundo.dominguez@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java/tree/master/jvm-batching#readme";
      url = "";
      synopsis = "Provides batched marshalling of values between Java and Haskell.";
      description = "Please see README.md.";
      buildType = "Custom";
    };
    components = {
      "jvm-batching" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.distributed-closure)
          (hsPkgs.jni)
          (hsPkgs.jvm)
          (hsPkgs.inline-java)
          (hsPkgs.singletons)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.inline-java)
            (hsPkgs.jvm)
            (hsPkgs.jvm-batching)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "micro-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.jvm)
            (hsPkgs.jvm-batching)
            (hsPkgs.split)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }
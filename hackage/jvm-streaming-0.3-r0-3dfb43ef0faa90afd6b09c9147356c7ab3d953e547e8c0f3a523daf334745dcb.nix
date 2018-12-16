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
        name = "jvm-streaming";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java/tree/master/jvm-streaming#readme";
      url = "";
      synopsis = "Expose Java iterators as streams from the streaming package.";
      description = "Please see README.md.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.distributed-closure)
          (hsPkgs.jni)
          (hsPkgs.jvm)
          (hsPkgs.jvm-batching)
          (hsPkgs.inline-java)
          (hsPkgs.singletons)
          (hsPkgs.streaming)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.inline-java)
            (hsPkgs.jvm)
            (hsPkgs.jvm-streaming)
            (hsPkgs.streaming)
          ];
        };
      };
      benchmarks = {
        "micro-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.jvm)
            (hsPkgs.jvm-streaming)
            (hsPkgs.streaming)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }
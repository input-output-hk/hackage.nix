{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jvm-streaming";
          version = "0.3.1";
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
        "jvm-streaming" = {
          depends  = [
            hsPkgs.base
            hsPkgs.distributed-closure
            hsPkgs.jni
            hsPkgs.jvm
            hsPkgs.jvm-batching
            hsPkgs.inline-java
            hsPkgs.singletons
            hsPkgs.streaming
            hsPkgs.vector
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.inline-java
              hsPkgs.jvm
              hsPkgs.jvm-streaming
              hsPkgs.streaming
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          "micro-benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.jvm
              hsPkgs.jvm-streaming
              hsPkgs.streaming
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
      };
    }
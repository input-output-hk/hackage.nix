{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jvm";
          version = "0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2016 EURL Tweag.";
        maintainer = "m@tweag.io";
        author = "Tweag I/O";
        homepage = "http://github.com/tweag/inline-java/tree/master/jvm#readme";
        url = "";
        synopsis = "Call JVM methods from Haskell.";
        description = "Please see README.md.";
        buildType = "Simple";
      };
      components = {
        jvm = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.constraints
            hsPkgs.choice
            hsPkgs.distributed-closure
            hsPkgs.exceptions
            hsPkgs.jni
            hsPkgs.singletons
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.jni
              hsPkgs.jvm
              hsPkgs.text
            ];
            libs = [ pkgs.pthread ];
          };
        };
        benchmarks = {
          micro-benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.jni
              hsPkgs.jvm
              hsPkgs.singletons
            ];
          };
        };
      };
    }
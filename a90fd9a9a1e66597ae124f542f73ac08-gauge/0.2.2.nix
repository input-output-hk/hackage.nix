{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      analysis = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gauge";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2016 Bryan O'Sullivan and others";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/vincenthz/hs-gauge";
        url = "";
        synopsis = "small framework for performance measurement and analysis";
        description = "This library provides a powerful but simple way to measure software\nperformance.  It provides both a framework for executing and\nanalysing benchmarks and a set of driver functions that makes it\neasy to build and run benchmarks, and to analyse their results.";
        buildType = "Simple";
      };
      components = {
        "gauge" = {
          depends  = [
            hsPkgs.base
            hsPkgs.basement
            hsPkgs.deepseq
            hsPkgs.vector
            hsPkgs.process
            hsPkgs.directory
          ];
        };
        tests = {
          "sanity" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.gauge
              hsPkgs.foundation
            ];
          };
          "cleanup" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.gauge
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.foundation
            ];
          };
        };
        benchmarks = {
          "self" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gauge
            ];
          };
        };
      };
    }
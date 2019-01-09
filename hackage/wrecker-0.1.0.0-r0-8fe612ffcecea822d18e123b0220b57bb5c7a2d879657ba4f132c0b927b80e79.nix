{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wrecker"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/skedgeme/wrecker#readme";
      url = "";
      synopsis = "An HTTP Performance Benchmarker";
      description = "'wrecker' is a library for creating HTTP benchmarks. It is designed for\nbenchmarking a series of HTTP request were the output of previous requests\nare used as inputs to the next request. This is useful for complex API\nprofiling situations.\n'wrecker' does not provide any mechanism for making HTTP calls. It works\nwith any HTTP client that produces a 'HttpException' during failure (so\nhttp-client and wreq will work out of the box).\nSee the documentation for examples of how to use 'wrecker' with\nbenchmarking scripts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.aeson-qq)
          (hsPkgs.statistics)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.unix)
          (hsPkgs.ansigraph)
          (hsPkgs.time)
          (hsPkgs.clock)
          (hsPkgs.text)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.tabular)
          (hsPkgs.deepseq)
          (hsPkgs.unordered-containers)
          (hsPkgs.threads)
          (hsPkgs.vty)
          (hsPkgs.threads-extras)
          (hsPkgs.clock-extras)
          (hsPkgs.optparse-applicative)
          (hsPkgs.stm-chans)
          (hsPkgs.ansi-terminal)
          (hsPkgs.unagi-chan)
          (hsPkgs.next-ref)
          ];
        };
      tests = {
        "wrecker-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wrecker)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discovery)
            ];
          };
        };
      };
    }
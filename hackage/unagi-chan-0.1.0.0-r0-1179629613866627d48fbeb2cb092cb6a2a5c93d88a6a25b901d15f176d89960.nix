{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      dev = false;
      compare-benchmarks = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "unagi-chan";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "";
      url = "";
      synopsis = "Fast and scalable concurrent queues for x86, with a Chan-like API";
      description = "This library provides implementations of concurrent FIFO queues (for both\ngeneral boxed and primitive unboxed values) that are fast, perform well\nunder contention, and offer a Chan-like interface. The library may be of\nlimited usefulness outside of x86 architectures where the fetch-and-add\ninstruction is not available.\n\nHere is an example benchmark measuring the time taken to write and then\nread 100,000 messages, with work divided amongst increasing number of\nreaders and writers (time in ms), comparing against the top-performing\nqueues in the standard libraries.\n\n<<http://i.imgur.com/safKkCP.png>>\n\nAnd here is a view on just the unagi implementations.\n\n<<http://i.imgur.com/K6s2pXj.png>>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.atomic-primops)
          (hsPkgs.primitive)
        ];
      };
      exes = {
        "dev-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.unagi-chan)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.primitive)
            (hsPkgs.atomic-primops)
            (hsPkgs.containers)
          ];
        };
      };
      benchmarks = {
        "single" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unagi-chan)
            (hsPkgs.criterion)
          ] ++ pkgs.lib.optional (flags.compare-benchmarks) (hsPkgs.stm);
        };
        "multi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unagi-chan)
            (hsPkgs.criterion)
            (hsPkgs.async)
          ] ++ pkgs.lib.optional (flags.compare-benchmarks) (hsPkgs.stm);
        };
      };
    };
  }
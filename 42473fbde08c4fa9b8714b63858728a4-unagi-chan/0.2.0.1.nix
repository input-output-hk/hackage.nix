{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      compare-benchmarks = false;
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "unagi-chan";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "";
      url = "";
      synopsis = "Fast and scalable concurrent queues for x86, with a Chan-like API";
      description = "This library provides implementations of concurrent FIFO queues (for both\ngeneral boxed and primitive unboxed values) that are fast, perform well\nunder contention, and offer a Chan-like interface. The library may be of\nlimited usefulness outside of x86 architectures where the fetch-and-add\ninstruction is not available.\n\nHere is an example benchmark measuring the time taken to concurrently write\nand read 100,000 messages, with work divided amongst increasing number of\nreaders and writers, comparing against the top-performing queues in the\nstandard libraries, with an inset graph showing a zoomed-in view on the\nimplementations here.\n\n<<http://i.imgur.com/J5rLUFn.png>>\n";
      buildType = "Simple";
    };
    components = {
      "unagi-chan" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.atomic-primops)
          (hsPkgs.primitive)
        ];
      };
      exes = {
        "dev-example" = {
          depends  = pkgs.lib.optionals (!(!_flags.dev)) [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.unagi-chan)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.primitive)
            (hsPkgs.atomic-primops)
            (hsPkgs.containers)
          ];
        };
      };
      benchmarks = {
        "single" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unagi-chan)
            (hsPkgs.criterion)
          ] ++ pkgs.lib.optional (_flags.compare-benchmarks) (hsPkgs.stm);
        };
        "multi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unagi-chan)
            (hsPkgs.criterion)
            (hsPkgs.async)
          ] ++ pkgs.lib.optional (_flags.compare-benchmarks) (hsPkgs.stm);
        };
      };
    };
  }
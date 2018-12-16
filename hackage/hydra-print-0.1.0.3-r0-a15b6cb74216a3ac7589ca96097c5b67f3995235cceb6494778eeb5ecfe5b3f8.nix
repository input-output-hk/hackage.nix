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
      specVersion = "1.8";
      identifier = {
        name = "hydra-print";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2013, Ryan Newton";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton";
      homepage = "https://github.com/rrnewton/hydra-print";
      url = "";
      synopsis = "NCurses interface to view multiple ByteString streams in parallel.";
      description = "Output from parallel subprocesses is an ugly, many-headed beast.\nPiping though hydra-print provides an NCurses interface to a dynamic\nset output streams, displayed without interleaving.  This is a\ncommon problem, for example, with parallel compiles, or\ndata-processing scripts.\n\nSpecifically, this small library will split the screen when\nparallelism occurs, and unsplit it when the parallelism is\nfinished (i.e. dynamically growing and losing \\\"heads\\\").\nThe @io-streams@ library is used for all stream inputs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.ncurses)
          (hsPkgs.directory)
          (hsPkgs.async)
          (hsPkgs.unix)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.random)
        ];
      };
      exes = {
        "systemtest-hydra-print" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.semigroups)
            (hsPkgs.mtl)
            (hsPkgs.ncurses)
            (hsPkgs.directory)
            (hsPkgs.async)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.random)
          ];
        };
        "hydra-view" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.semigroups)
            (hsPkgs.mtl)
            (hsPkgs.ncurses)
            (hsPkgs.directory)
            (hsPkgs.async)
            (hsPkgs.unix)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.random)
          ];
        };
        "hydra-head" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.semigroups)
            (hsPkgs.mtl)
            (hsPkgs.ncurses)
            (hsPkgs.directory)
            (hsPkgs.async)
            (hsPkgs.unix)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.random)
          ];
        };
      };
      tests = {
        "unittest-hydra-print" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.semigroups)
            (hsPkgs.mtl)
            (hsPkgs.ncurses)
            (hsPkgs.directory)
            (hsPkgs.async)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }
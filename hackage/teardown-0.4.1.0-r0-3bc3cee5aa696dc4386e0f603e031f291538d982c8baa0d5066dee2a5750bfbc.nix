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
        name = "teardown";
        version = "0.4.1.0";
      };
      license = "MIT";
      copyright = "© 2017, 2018 Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-teardown#readme";
      url = "";
      synopsis = "Build safe and composable teardown sub-routines for resources";
      description = "The teardown library allows you to reliably execute cleanup sub-routines for\nallocated resources. When a program is initialized, it:\n\n* Ensures that teardown sub-routines are executed /exactly/ once\n\n* Ensures that if errors occur on the execution of a Teardown sub-routine, the\nerror does not propagate to others; bulkheading failure on cleanup.\n\n* Requires every sub-routine to be documented at creation time; thus helping\ntracing your application structure.\n\n* Allows tracing the teardown of your application, how is structured, how much\ntime it takes to execute, and what component (if any) failed to finalize.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.rio)
          (hsPkgs.typed-process)
          (hsPkgs.unliftio)
        ];
      };
      tests = {
        "teardown-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rio)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.teardown)
            (hsPkgs.typed-process)
            (hsPkgs.unliftio)
          ];
        };
      };
      benchmarks = {
        "teardown-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gauge)
            (hsPkgs.rio)
            (hsPkgs.teardown)
            (hsPkgs.typed-process)
            (hsPkgs.unliftio)
          ];
        };
      };
    };
  }
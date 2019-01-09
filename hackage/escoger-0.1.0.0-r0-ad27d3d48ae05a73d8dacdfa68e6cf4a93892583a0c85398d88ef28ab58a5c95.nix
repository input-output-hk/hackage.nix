{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "escoger"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "hello@travisstaton.com";
      author = "Travis Staton";
      homepage = "";
      url = "";
      synopsis = "Terminal fuzzy selector";
      description = "Interactive fuzzy selector for the terminal. Escoger accepts\na newline separated input on stdin, and provides an interactive\nprompt to select one of these lines to output to stdout.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "escoger-lib" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vty)
            (hsPkgs.unix)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
            (hsPkgs.mtl)
            ];
          };
        };
      exes = {
        "escoger" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.escoger-lib)
            (hsPkgs.vty)
            (hsPkgs.unix)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.mtl)
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.escoger-lib)
            (hsPkgs.vector)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.escoger-lib)
            (hsPkgs.vty)
            (hsPkgs.unix)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }
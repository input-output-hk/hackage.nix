{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "teardown"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "© 2017 Roman Gonzalez";
      maintainer = "romanandreg@gmail.com";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-teardown#readme";
      url = "";
      synopsis = "Build composable components for your application with clear teardown semantics";
      description = "The teardown library allows you to reliably deallocate resources\ncreated when initializing your application. It provides:\n\n- A ComponentM monad that allows you to build and compose resources with\ncleanup semantics\n\n- An API that composes IO cleanup sub-routines safely\n\nCheck Control.Teardown.Tutorial for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.exceptions)
          (hsPkgs.deepseq)
          ];
        };
      tests = {
        "teardown-doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.QuickCheck)
            (hsPkgs.teardown)
            ];
          };
        "teardown-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-rerun)
            (hsPkgs.teardown)
            ];
          };
        };
      benchmarks = {
        "teardown-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.criterion)
            (hsPkgs.teardown)
            ];
          };
        };
      };
    }
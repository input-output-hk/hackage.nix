{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "async-timer"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2017 Moritz Schulte";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Schulte";
      homepage = "https://github.com/mtesseract/async-timer";
      url = "";
      synopsis = "Provides API for timer based execution of IO actions";
      description = "This is a lightweight package built on top of the async package\nproviding easy to use periodic timers. This can be used for executing\nIO actions periodically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.lifted-async)
          (hsPkgs.monad-control)
          (hsPkgs.safe-exceptions)
          (hsPkgs.transformers-base)
          ];
        };
      tests = {
        "async-timer-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lifted-async)
            (hsPkgs.async-timer)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }
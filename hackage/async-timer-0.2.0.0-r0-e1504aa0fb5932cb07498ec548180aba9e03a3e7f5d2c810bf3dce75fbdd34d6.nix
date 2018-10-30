{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "async-timer";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2018 Moritz Clasmeier";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Clasmeier";
      homepage = "https://github.com/mtesseract/async-timer#readme";
      url = "";
      synopsis = "Provides API for timer based execution of IO actions";
      description = "This is a lightweight package built on top of the async package\nproviding easy to use periodic timers. This can be used for executing\nIO actions periodically.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.safe-exceptions)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
        ];
      };
      tests = {
        "async-timer-test" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.async-timer)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }
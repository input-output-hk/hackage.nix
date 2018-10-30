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
        name = "async-manager";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "http://github.com/jfischoff/async-manager";
      url = "";
      synopsis = "A thread manager for async";
      description = "Cleanup and kill async threads.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.stm)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "thread-clean-up-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.stm)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }
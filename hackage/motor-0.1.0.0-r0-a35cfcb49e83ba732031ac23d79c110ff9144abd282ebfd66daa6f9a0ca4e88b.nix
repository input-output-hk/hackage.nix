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
        name = "motor";
        version = "0.1.0.0";
      };
      license = "MPL-2.0";
      copyright = "Oskar Wickström";
      maintainer = "oskar.wickstrom@gmail.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Type-safe effectful state machines in Haskell";
      description = "/Motor/ is an experimental Haskell library for building finite-state\nmachines with type-safe transitions and effects. It draws inspiration\nfrom the Idris [ST\n](http://docs.idris-lang.org/en/latest/st/state.html) library. See the\n\"Motor.FSM\" module for documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.indexed)
          (hsPkgs.indexed-extras)
          (hsPkgs.CTRex)
          (hsPkgs.reflection)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.indexed)
            (hsPkgs.indexed-extras)
            (hsPkgs.CTRex)
            (hsPkgs.motor)
          ];
        };
      };
    };
  }
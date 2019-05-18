{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "control-event"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas.DuBuisson@gmail.com";
      author = "Thomas DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Event scheduling system.";
      description = "Allows scheduling and canceling of IO actions to be\nexecuted at a specified future time.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.stm)
          ];
        };
      tests = {
        "control-event-test-absolute" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.control-event)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.time)
            ];
          };
        "control-event-test-relative" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.control-event)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.time)
            ];
          };
        };
      };
    }
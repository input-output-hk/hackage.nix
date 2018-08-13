{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "control-event";
        version = "1.1.0.3";
      };
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
      "control-event" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.stm)
        ];
      };
    };
  }
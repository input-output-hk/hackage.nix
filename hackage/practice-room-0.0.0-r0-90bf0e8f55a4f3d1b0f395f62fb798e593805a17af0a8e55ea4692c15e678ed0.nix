{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "practice-room";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang";
      author = "Jinjing Wang";
      homepage = "";
      url = "";
      synopsis = "Watch the practice time for whatever practice you are trying to make, e.g. a piano?";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "practice-room" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mps)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.json)
          ];
        };
      };
    };
  }
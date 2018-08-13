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
      specVersion = "1.10";
      identifier = {
        name = "SCalendar";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "https://www.researchgate.net/publication/311582722_Method_of_Managing_Resources_in_a_Telecommunication_Network_or_a_Computing_System";
      maintainer = "Sebastian Pulido Gomez";
      author = "Martin Rayrole <Author of Algorithm>";
      homepage = "https://www.researchgate.net/publication/311582722_Method_of_Managing_Resources_in_a_Telecommunication_Network_or_a_Computing_System";
      url = "";
      synopsis = "This is a library for handling calendars and resource availability\nbased on the \"top-nodes algorithm\" and set operations.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "SCalendar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.text)
        ];
      };
      tests = {
        "scalendar-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.scalendar)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.text)
          ];
        };
      };
    };
  }
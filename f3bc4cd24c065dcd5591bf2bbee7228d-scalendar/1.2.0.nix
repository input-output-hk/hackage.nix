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
        name = "scalendar";
        version = "1.2.0";
      };
      license = "MIT";
      copyright = "2017 Stack Builders Inc.";
      maintainer = "Stack Builders <hackage@stackbuilders.com>";
      author = "Sebastian Pulido Gómez <spulido@stackbuilders.com>";
      homepage = "https://github.com/stackbuilders/scalendar";
      url = "";
      synopsis = "A library for handling calendars and resource availability over time.";
      description = "scalendar is a library based on the \"top-nodes algorithm\", invented by\nMartin Rayrole <https://en.wikipedia.org/wiki/Top-nodes_algorithm>, and\nset operations, which makes it easy to handle the availability of a set of\nresources over time.";
      buildType = "Simple";
    };
    components = {
      "scalendar" = {
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
            (hsPkgs.SCalendar)
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
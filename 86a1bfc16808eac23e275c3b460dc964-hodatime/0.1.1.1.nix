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
        name = "hodatime";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<jason.johnson.081@gmail.com>";
      author = "Jason Johnson";
      homepage = "https://github.com/jason-johnson/hodatime";
      url = "";
      synopsis = "A fully featured date/time library based on Nodatime";
      description = "A library for dealing with time, dates, calendars and time zones";
      buildType = "Simple";
    };
    components = {
      "hodatime" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.hodatime)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.random)
          ];
        };
      };
    };
  }
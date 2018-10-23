{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "timezone-unix";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Ashley Yakeley";
      maintainer = "ashley@semantic.org";
      author = "Ashley Yakeley";
      homepage = "";
      url = "";
      synopsis = "";
      description = "UNIX-specific handling of time data.";
      buildType = "Simple";
    };
    components = {
      "timezone-unix" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.leapseconds)
          (hsPkgs.timezone-series)
          (hsPkgs.timezone-olson)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.leapseconds)
            (hsPkgs.timezone-series)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-golden)
            (hsPkgs.timezone-unix)
          ];
        };
      };
    };
  }
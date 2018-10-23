{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "flow-er";
        version = "1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "bez@brooklynzelenka.com";
      author = "Brooklyn Zelenka";
      homepage = "https://github.com/expede/flower#README";
      url = "";
      synopsis = "MOre directional operators";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "flow-er" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.flow)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.doctest)
            (hsPkgs.flow)
            (hsPkgs.flow-er)
          ];
        };
      };
    };
  }
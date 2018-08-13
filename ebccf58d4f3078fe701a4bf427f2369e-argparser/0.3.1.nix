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
      specVersion = "1.8";
      identifier = {
        name = "argparser";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Bergot <simon.bergot@gmail.com>";
      author = "Simon Bergot <simon.bergot@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Command line parsing framework for console applications";
      description = "Provides a combinator library for defining a command line parser.";
      buildType = "Simple";
    };
    components = {
      "argparser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "TestsHTF" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTF)
            (hsPkgs.containers)
            (hsPkgs.HUnit)
            (hsPkgs.argparser)
          ];
        };
      };
    };
  }
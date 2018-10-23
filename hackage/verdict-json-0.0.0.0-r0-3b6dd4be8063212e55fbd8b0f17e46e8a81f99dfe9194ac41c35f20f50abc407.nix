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
        name = "verdict-json";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "";
      url = "";
      synopsis = "JSON instances and JSON Schema for verdict";
      description = "DO NOT USE! Unstable, not thoroughly tested.";
      buildType = "Simple";
    };
    components = {
      "verdict-json" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.verdict)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "Example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.verdict)
            (hsPkgs.verdict-json)
            (hsPkgs.containers)
            (hsPkgs.aeson)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.verdict)
            (hsPkgs.verdict-json)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }
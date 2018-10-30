{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "workdays";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "2016 Stack Builders";
      maintainer = "Juan Pedro Villa Isaza <jvilla@stackbuilders.com>";
      author = "Juan Pedro Villa Isaza <jvilla@stackbuilders.com>";
      homepage = "https://github.com/stackbuilders/workdays";
      url = "";
      synopsis = "Workday calculations";
      description = "Workday calculations. Please see the README.md file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
        ];
      };
      tests = {
        "specs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.workdays)
            (hsPkgs.containers)
            (hsPkgs.hspec)
          ];
        };
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }
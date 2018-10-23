{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "gitson";
        version = "0.4.1";
      };
      license = "Apache-2.0";
      copyright = "2014 Greg V <floatboth@me.com>";
      maintainer = "floatboth@me.com";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/gitson";
      url = "";
      synopsis = "A document store library for Git + JSON.";
      description = "A simple document store library for Git + JSON, based on Aeson. Uses command line git. Transactions use flock, so it's safe even across completely separate programs!";
      buildType = "Simple";
    };
    components = {
      "gitson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.errors)
          (hsPkgs.flock)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
        ];
      };
      tests = {
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.doctest)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitson)
            (hsPkgs.transformers)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.random)
            (hsPkgs.gitson)
            (hsPkgs.aeson)
            (hsPkgs.criterion)
            (hsPkgs.hastache)
            (hsPkgs.statistics)
          ];
        };
      };
    };
  }
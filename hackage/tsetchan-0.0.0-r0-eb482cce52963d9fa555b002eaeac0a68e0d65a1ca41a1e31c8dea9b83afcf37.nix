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
        name = "tsetchan";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/tsetchan#readme";
      url = "";
      synopsis = "Hides duplicating channels when broadcasting";
      description = "";
      buildType = "Simple";
    };
    components = {
      "tsetchan" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "tsetchan-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tsetchan)
            (hsPkgs.async)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }
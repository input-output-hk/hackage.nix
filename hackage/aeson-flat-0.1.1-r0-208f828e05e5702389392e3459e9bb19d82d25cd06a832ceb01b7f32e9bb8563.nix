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
        name = "aeson-flat";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Sean Hess";
      maintainer = "seanhess@gmail.com";
      author = "Sean Hess";
      homepage = "https://github.com/seanhess/aeson-flat#readme";
      url = "";
      synopsis = "Tools for creating flat JSON serializations";
      description = "Tools for creating flat JSON serializations";
      buildType = "Simple";
    };
    components = {
      "aeson-flat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "aeson-flat-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson-flat)
          ];
        };
      };
    };
  }
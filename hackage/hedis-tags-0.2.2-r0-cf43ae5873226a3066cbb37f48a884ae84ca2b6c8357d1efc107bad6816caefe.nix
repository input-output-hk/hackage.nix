{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hedis-tags";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Dorofeev <aka.spin@gmail.com>";
      author = "Alexander Dorofeev <aka.spin@gmail.com>";
      homepage = "https://github.com/akaspin/hedis-tags";
      url = "";
      synopsis = "Tags for hedis";
      description = "Brain-free tags for Redis.";
      buildType = "Simple";
    };
    components = {
      "hedis-tags" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hedis)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.hedis-tags)
            (hsPkgs.bytestring)
            (hsPkgs.hedis)
            (hsPkgs.lifted-base)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }
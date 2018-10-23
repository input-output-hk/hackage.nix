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
        name = "feature-flipper";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "2017 Todd Mohney";
      maintainer = "toddmohney@gmail.com";
      author = "Todd Mohney";
      homepage = "https://github.com/toddmohney/flipper#readme";
      url = "";
      synopsis = "A minimally obtrusive feature flag library";
      description = "A minimally obtrusive feature flag library";
      buildType = "Simple";
    };
    components = {
      "feature-flipper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
      tests = {
        "feature-flipper-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.feature-flipper)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }
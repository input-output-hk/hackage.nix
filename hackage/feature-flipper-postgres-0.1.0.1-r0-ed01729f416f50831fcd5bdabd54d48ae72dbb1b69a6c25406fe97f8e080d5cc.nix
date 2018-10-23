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
        name = "feature-flipper-postgres";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2017 Todd Mohney";
      maintainer = "toddmohney@gmail.com";
      author = "Todd Mohney";
      homepage = "https://github.com/toddmohney/flipper-postgres#readme";
      url = "";
      synopsis = "A minimally obtrusive feature flag library";
      description = "A minimally obtrusive feature flag library";
      buildType = "Simple";
    };
    components = {
      "feature-flipper-postgres" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.feature-flipper)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.persistent)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.persistent-template)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "feature-flipper-postgres-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.persistent)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.feature-flipper)
            (hsPkgs.feature-flipper-postgres)
          ];
        };
      };
    };
  }
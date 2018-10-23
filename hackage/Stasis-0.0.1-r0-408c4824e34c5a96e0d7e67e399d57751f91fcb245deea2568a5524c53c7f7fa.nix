{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Stasis";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Courtney Robinson";
      maintainer = "zcourts";
      author = "zcourts";
      homepage = "https://github.com/zcourts/Stasis";
      url = "";
      synopsis = "A simple MVCC like library";
      description = "Multi-version concurrency control";
      buildType = "Simple";
    };
    components = {
      "Stasis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "Stasis" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }
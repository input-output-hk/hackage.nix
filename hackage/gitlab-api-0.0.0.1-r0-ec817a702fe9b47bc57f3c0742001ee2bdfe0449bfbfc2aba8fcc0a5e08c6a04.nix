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
        name = "gitlab-api";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Firth";
      maintainer = "locallycompact@gmail.com";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Gitlab Web API";
      description = "Gitlab Web API V4";
      buildType = "Simple";
    };
    components = {
      "gitlab-api" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.microlens-platform)
          (hsPkgs.rio)
          (hsPkgs.yaml)
        ];
      };
      tests = {
        "gitlab-api-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gitlab-api)
            (hsPkgs.hspec)
            (hsPkgs.rio)
          ];
        };
      };
    };
  }
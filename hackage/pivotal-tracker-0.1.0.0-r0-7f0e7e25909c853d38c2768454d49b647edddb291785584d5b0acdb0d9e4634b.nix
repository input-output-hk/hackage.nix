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
        name = "pivotal-tracker";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "utdemir@gmail.com";
      author = "Utku Demir";
      homepage = "";
      url = "";
      synopsis = "A library and a CLI tool for accessing Pivotal Tracker API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.aeson-casing)
        ];
      };
      exes = {
        "tracker" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tracker)
            (hsPkgs.servant)
            (hsPkgs.text)
            (hsPkgs.either)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }
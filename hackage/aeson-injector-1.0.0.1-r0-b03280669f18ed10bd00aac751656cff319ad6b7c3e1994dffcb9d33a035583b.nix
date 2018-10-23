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
        name = "aeson-injector";
        version = "1.0.0.1";
      };
      license = "MIT";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "";
      url = "";
      synopsis = "Injecting fields into aeson values";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "aeson-injector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "test-aeson-injector" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-injector)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.swagger2)
            (hsPkgs.text)
          ];
        };
      };
    };
  }
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
        name = "avers-api-docs";
        version = "0.0.18.0";
      };
      license = "MIT";
      copyright = "2016 Tomas Carnecky";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "http://github.com/wereHamster/avers-api-docs";
      url = "";
      synopsis = "Swagger documentation for the Avers API";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "avers-api-docs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.avers)
          (hsPkgs.avers-api)
          (hsPkgs.cookie)
          (hsPkgs.lens)
          (hsPkgs.servant)
          (hsPkgs.servant-swagger)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }
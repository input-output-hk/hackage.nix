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
        name = "trasa-client";
        version = "0.3";
      };
      license = "MIT";
      copyright = "@2017 Kyle McKean";
      maintainer = "mckean.kylej@gmail.com";
      author = "Kyle McKean";
      homepage = "";
      url = "";
      synopsis = "Type safe http requests";
      description = "Http client integration for trasa";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.http-media)
          (hsPkgs.http-client)
          (hsPkgs.trasa)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.trasa)
            (hsPkgs.trasa-client)
            (hsPkgs.http-types)
            (hsPkgs.http-client)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.ip)
            (hsPkgs.aeson)
          ];
        };
      };
    };
  }
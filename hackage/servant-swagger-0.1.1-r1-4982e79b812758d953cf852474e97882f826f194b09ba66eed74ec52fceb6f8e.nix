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
        name = "servant-swagger";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2015-2016";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "https://github.com/dmjio/servant-swagger";
      url = "";
      synopsis = "Generate Swagger specification for your servant API.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.servant)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-swagger)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }
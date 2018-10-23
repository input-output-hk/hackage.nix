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
        name = "fbmessenger-api";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Marcello Seri, Federico Rampazzo";
      maintainer = "marcello.seri@gmail.com";
      author = "Marcello Seri";
      homepage = "https://github.com/mseri/fbmessenger-api-hs#readme";
      url = "";
      synopsis = "High-level bindings to Facebook Messenger Platform API";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "fbmessenger-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.mime-types)
          (hsPkgs.string-conversions)
          (hsPkgs.case-insensitive)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.fbmessenger-api)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "fbmessenger-api-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.fbmessenger-api)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }
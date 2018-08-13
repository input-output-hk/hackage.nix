{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "twfy-api-client";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Nigel Rantor";
      maintainer = "wiggly@wiggly.org";
      author = "Nigel Rantor";
      homepage = "https://github.com/wiggly/twfy-api-client#readme";
      url = "";
      synopsis = "They Work For You API Client Library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "twfy-api-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.mtl)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.aeson-compat)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-server)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-media)
        ];
      };
      exes = {
        "twfy-api-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.twfy-api-client)
            (hsPkgs.http-client)
            (hsPkgs.base-compat)
            (hsPkgs.mtl)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.aeson-compat)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
          ];
        };
      };
      tests = {
        "twfy-api-client-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.twfy-api-client)
          ];
        };
      };
    };
  }
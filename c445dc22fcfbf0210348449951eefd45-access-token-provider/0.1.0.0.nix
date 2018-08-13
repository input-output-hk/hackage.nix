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
        name = "access-token-provider";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Moritz Clasmeier";
      maintainer = "mtesseract@silverratio.net";
      author = "Moritz Clasmeier";
      homepage = "https://github.com/mtesseract/access-token-provider#readme";
      url = "";
      synopsis = "Provides Access Token for Services";
      description = "Access Token Provider supporting multiple provider backends,\nincluding OAuth2 Resource Owner Password Credentials Grant,\nfile-based token access (e.g. for Kubernetes) and fetching\ntokens from the environment (e.g. for local testing). The\npackage is configurable via environment variables.";
      buildType = "Simple";
    };
    components = {
      "access-token-provider" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.aeson)
          (hsPkgs.http-types)
          (hsPkgs.aeson-casing)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.unliftio-core)
          (hsPkgs.unliftio)
          (hsPkgs.katip)
          (hsPkgs.th-format)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.safe-exceptions)
          (hsPkgs.base64-bytestring)
          (hsPkgs.filepath)
          (hsPkgs.stm)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.random)
        ];
      };
      tests = {
        "access-token-provider-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.access-token-provider)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.katip)
            (hsPkgs.safe-exceptions)
            (hsPkgs.uuid)
            (hsPkgs.random)
            (hsPkgs.lens)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.th-format)
            (hsPkgs.unliftio-core)
            (hsPkgs.unliftio)
            (hsPkgs.safe-exceptions)
          ];
        };
      };
    };
  }
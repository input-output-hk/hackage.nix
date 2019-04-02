{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "approveapi"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "2019 - ApproveAPI";
      maintainer = "dev@approveapi.com";
      author = "Kevin King";
      homepage = "https://approveapi.com";
      url = "";
      synopsis = "ApproveAPI Haskell Client";
      description = "\nHaskell client for the ApproveAPI HTTP API\nApproveAPI is a simple API to request a user's real-time approval on anything via email, sms + mobile push.\ncategory:       Web";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.iso8601-time)
          (hsPkgs.microlens)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.random)
          (hsPkgs.case-insensitive)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.http-client-tls)
          (hsPkgs.katip)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.approveapi)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.iso8601-time)
            (hsPkgs.mtl)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "smith-client"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019, HotelKilo";
      maintainer = "mth@smith.st";
      author = "Mark Hibberd";
      homepage = "https://github.com/smith-security/smith-client";
      url = "";
      synopsis = "API client for <https://smith.st/ Smith>.";
      description = "This is an API client library for interacting with <https://smith.st Smith>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.jose)
          (hsPkgs.oauth2-jwt-bearer)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-bifunctors)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.smith-client)
            (hsPkgs.transformers)
            ];
          };
        "pact-generator" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.http-types)
            (hsPkgs.text)
            (hsPkgs.smith-client)
            ];
          };
        };
      };
    }
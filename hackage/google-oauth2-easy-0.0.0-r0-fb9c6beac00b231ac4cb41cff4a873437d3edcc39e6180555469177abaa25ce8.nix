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
        name = "google-oauth2-easy";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "Joe Vargas";
      homepage = "https://github.com/jxv/google-oauth2-easy#readme";
      url = "";
      synopsis = "Opininated use of Google Authentication for ease";
      description = "Easy Google Authentication integration using the Authorization Code Grant and Refresh Token";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.text-conversions)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "google-oauth2-easy-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.google-oauth2-easy)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
      benchmarks = {
        "google-oauth2-easy-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.google-oauth2-easy)
          ];
        };
      };
    };
  }
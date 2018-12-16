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
        name = "ziptastic-core";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Elliot Cameron and Ziptastic and Grafted-In LLC";
      maintainer = "elliot@graftedin.io";
      author = "Elliot Cameron";
      homepage = "https://github.com/Ziptastic/ziptastic-haskell#readme";
      url = "";
      synopsis = "Core Servant specification for the Ziptastic API for doing forward and reverse geocoding.";
      description = "This package provides a type-safe Servant specification for the Ziptastic\n(<https://www.getziptastic.com>) API for doing forward and reverse geocoding\nvia zip/postal code, latitude, and longitude.\n\nIf you want to use the Ziptastic API in your application, try the @ziptastic-client@ package.\n\nThis package is maintained by Grafted-In (<https://www.graftedin.io/>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-api-data)
          (hsPkgs.iso3166-country-codes)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.tz)
        ];
      };
      tests = {
        "test-core" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.here)
            (hsPkgs.hspec)
            (hsPkgs.iso3166-country-codes)
            (hsPkgs.text)
            (hsPkgs.tz)
            (hsPkgs.ziptastic-core)
          ];
        };
      };
    };
  }
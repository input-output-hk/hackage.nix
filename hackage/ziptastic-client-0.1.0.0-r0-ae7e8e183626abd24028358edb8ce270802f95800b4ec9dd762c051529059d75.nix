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
        name = "ziptastic-client";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Elliot Cameron and Ziptastic and Grafted-In LLC";
      maintainer = "elliot@graftedin.io";
      author = "Elliot Cameron";
      homepage = "https://github.com/Ziptastic/ziptastic-haskell#readme";
      url = "";
      synopsis = "Core Servant specification for the Ziptastic API (https://www.getziptastic.com) for doing forward and reverse geocoding.";
      description = "This package provides a type-safe Servant specification for the Ziptastic\n(https://www.getziptastic.com) API for doing forward and reverse geocoding\nvia zip/postal code, latitude, and longitude.\n\nThis package is maintained by Grafted-In (https://www.graftedin.io/).";
      buildType = "Simple";
    };
    components = {
      "ziptastic-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.iso3166-country-codes)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.tz)
          (hsPkgs.ziptastic-core)
        ];
      };
    };
  }
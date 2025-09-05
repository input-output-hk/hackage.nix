{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ip2location"; version = "8.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "sales@ip2location.com";
      author = "IP2Location";
      homepage = "http://www.ip2location.com";
      url = "";
      synopsis = "IP2Location Haskell package for IP geolocation.";
      description = "This Haskell package provides a fast lookup of country, region, city, latitude, longitude, ZIP code, time zone, ISP, domain name, connection type, IDD code, area code, weather station code, weather station name, mcc, mnc, mobile brand, elevation, usage type, address type and IAB category from IP address by using IP2Location database. This package uses a file based database available at IP2Location.com. This database simply contains IP blocks as keys, and other information such as country, region, city, latitude, longitude, ZIP code, time zone, ISP, domain name, connection type, IDD code, area code, weather station code, weather station name, mcc, mnc, mobile brand, elevation, usage type, address type, IAB category, district, autonomous system number (ASN), autonomous system (AS), AS domain, AS usage type and AS CIDR as values. It supports both IP addresses in IPv4 and IPv6.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."uri-encode" or (errorHandler.buildDepError "uri-encode"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
    };
  }
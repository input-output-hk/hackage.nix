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
        name = "rbpcp-api";
        version = "0.2.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "runesvend@gmail.com";
      author = "Rune K. Svendsen";
      homepage = "http://paychandoc.runeks.me/";
      url = "";
      synopsis = "RESTful Bitcoin Payment Channel Protocol Servant API description";
      description = "RESTful Bitcoin Payment Channel Protocol (RBPCP) allows a client to send Bitcoin payments to a server, by establishing a Bitcoin payment channel with the server in a standardized manner.\nThis library provides Servant API endpoints for RBPCP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskoin-core)
          (hsPkgs.bitcoin-payment-protocol)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.string-conversions)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.time)
          (hsPkgs.http-api-data)
        ];
      };
    };
  }
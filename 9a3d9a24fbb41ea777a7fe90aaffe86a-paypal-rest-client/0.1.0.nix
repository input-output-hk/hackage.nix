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
        name = "paypal-rest-client";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "vc@braden-walters.info";
      author = "Braden Walters";
      homepage = "https://github.com/meoblast001/paypal-rest-client";
      url = "";
      synopsis = "A client to connect to PayPal's REST API (v1)";
      description = "Library to connect with and use PayPal's\n<https://developer.paypal.com/docs/api/ REST API v1>. For documentation, see\nthe <https://github.com/meoblast001/paypal-rest-client/blob/master/README.md README>.\nDuring releases under 1.0.0, please use exact version numbers as bug fixes may\nrequire breaking changes while this library is unstable.";
      buildType = "Simple";
    };
    components = {
      "paypal-rest-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.safe)
          (hsPkgs.wreq)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.Decimal)
          (hsPkgs.country-codes)
          (hsPkgs.time)
        ];
      };
    };
  }
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
        name = "smsaero";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, GetShopTV";
      maintainer = "nickolay@getshoptv.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/GetShopTV/smsaero";
      url = "";
      synopsis = "SMSAero API and HTTP client based on servant library.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-docs)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.containers)
        ];
      };
    };
  }
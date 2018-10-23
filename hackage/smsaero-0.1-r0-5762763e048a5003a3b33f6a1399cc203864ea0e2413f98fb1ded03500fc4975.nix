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
        name = "smsaero";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nickolay@getshoptv.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/GetShopTV/smsaero";
      url = "";
      synopsis = "SMSAero API and HTTP client based on servant library.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "smsaero" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.either)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }
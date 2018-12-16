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
      specVersion = "1.8";
      identifier = {
        name = "openexchangerates";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2013 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/openexchangerates-haskell";
      url = "";
      synopsis = "Fetch exchange rates from OpenExchangeRates.org";
      description = "This package wraps up the process of fetching exchange rates from\nOpenExchangeRates.org.  You will need an AppID.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.currency)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.errors)
        ];
      };
    };
  }
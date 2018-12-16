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
        name = "forecast-io";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stormont@gmail.com";
      author = "Devan Stormont";
      homepage = "https://github.com/stormont/forecast-io";
      url = "";
      synopsis = "A Haskell library for working with forecast.io data.";
      description = "For more detailed documentation on the service, please refer to the\nexcellent documentation for the\n<https://developer.forecast.io/docs/v2 forecast.io > service.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
    };
  }
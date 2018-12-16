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
        name = "weather-api";
        version = "0.4.3.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "peter@standalone.su";
      author = "Peter";
      homepage = "https://github.com/cvb/hs-weather-api#readme";
      url = "";
      synopsis = "Weather API implemented in Haskell";
      description = "This library implement generic API for retrieving weather by HTTP, and has Google weather API as example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
      };
    };
  }
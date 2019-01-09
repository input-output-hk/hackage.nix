{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "weather-api"; version = "0.4.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "peter@standalone.su";
      author = "Peter";
      homepage = "https://github.com/cvb/hs-weather-api.git";
      url = "";
      synopsis = "Weather api implemented in haskell";
      description = "This library implement generic api for retrieving weather\nby http, and has google weather api as example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.utf8-string)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.vector)
          ];
        };
      };
    }
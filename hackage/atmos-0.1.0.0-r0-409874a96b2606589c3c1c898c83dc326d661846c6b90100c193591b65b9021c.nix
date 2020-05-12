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
      specVersion = "1.8";
      identifier = { name = "atmos"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "1976 US Standard Atmosphere";
      description = "1976 US Standard Atmosphere\n\nAdapted by Greg Horn from original programs by Ralph L. Carmichael, Public Domain Aeronautical Software\n\nThe original code can be found at <http://www.pdas.com/atmos.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
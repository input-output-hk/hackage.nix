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
      specVersion = "0";
      identifier = { name = "dataenc"; version = "0.9"; };
      license = "LicenseRef-LGPL";
      copyright = "Magnus Therning, 2007";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "Data encoding library currently providing Uuencode, Base64,\nBase64Url, Base32, Base32Hex, and Base16.";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
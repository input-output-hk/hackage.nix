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
      specVersion = "1.12";
      identifier = { name = "genvalidity-dlist"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2024 Tom Sydney Kerckhove, Clinton Mead";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove, Clinton Mead";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for dlist";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."validity-dlist" or (errorHandler.buildDepError "validity-dlist"))
        ];
        buildable = true;
      };
    };
  }
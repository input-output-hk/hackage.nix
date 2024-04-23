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
      specVersion = "1.0";
      identifier = { name = "not-in-base"; version = "0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Oscar Finnsson";
      author = "Oscar Finnsson";
      homepage = "http://github.com/finnsson/not-in-base";
      url = "";
      synopsis = "Useful utility functions that only depend on base. ";
      description = "Useful utility functions that only depend on base.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }
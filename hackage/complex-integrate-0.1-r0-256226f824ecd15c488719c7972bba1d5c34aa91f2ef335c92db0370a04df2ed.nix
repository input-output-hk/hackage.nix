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
      specVersion = "1.2";
      identifier = { name = "complex-integrate"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "hijarian@gmail.com";
      author = "Mark Safronov a.k.a. hijarian";
      homepage = "";
      url = "";
      synopsis = "A simple integration function to integrate a complex-valued complex functions ";
      description = "Small and simple library for integration of complex functions.\nIntegrates functions along straight lines. Compatible with real-valued functions.\nUses Simpson's method.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
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
      identifier = { name = "testPkg"; version = "0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "";
      author = "Stephen E. A. Britton";
      homepage = "";
      url = "";
      synopsis = "Small test package";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "testPkg" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }
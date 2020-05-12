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
      identifier = { name = "addLicenseInfo"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "unmaintained";
      author = "Joe Fredette";
      homepage = "";
      url = "";
      synopsis = "Adds license info to the top of a file.";
      description = "Adds license info to the top of a file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "addLicenseInfo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }
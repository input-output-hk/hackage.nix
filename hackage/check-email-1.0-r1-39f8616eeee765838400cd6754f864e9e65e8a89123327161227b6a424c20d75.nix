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
      identifier = { name = "check-email"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "Kenny Shen <kenny@machinesung.com>";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Confirm whether an email is valid and probably existant.";
      description = "Confirm whether an email is valid and probably existant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
        ];
        libs = [ (pkgs."resolv" or (errorHandler.sysDepError "resolv")) ];
        buildable = true;
      };
    };
  }
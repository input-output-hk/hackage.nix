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
      specVersion = "1.4";
      identifier = { name = "validate"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow, Chris Done";
      maintainer = "Matt Morrow <mjm2002@gmail.com>, Chris Done <chrisdone@gmail.com>";
      author = "Matt Morrow, Chris Done";
      homepage = "";
      url = "";
      synopsis = "Validate";
      description = "Validate data provided by users.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }
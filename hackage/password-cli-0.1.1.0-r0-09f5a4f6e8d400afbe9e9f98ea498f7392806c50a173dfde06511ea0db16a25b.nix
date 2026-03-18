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
      specVersion = "3.0";
      identifier = { name = "password-cli"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Dennis Gosnell, 2019; Felix Paulusma, 2020";
      maintainer = "cdep.illabout@gmail.com, felix.paulusma@gmail.com";
      author = "Dennis Gosnell, Felix Paulusma";
      homepage = "https://github.com/cdepillabout/password/tree/master/password-cli#readme";
      url = "";
      synopsis = "use password from your CLI";
      description = "A simple CLI tool to interact with password";
      buildType = "Simple";
    };
    components = {
      exes = {
        "password-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."password" or (errorHandler.buildDepError "password"))
            (hsPkgs."password-types" or (errorHandler.buildDepError "password-types"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
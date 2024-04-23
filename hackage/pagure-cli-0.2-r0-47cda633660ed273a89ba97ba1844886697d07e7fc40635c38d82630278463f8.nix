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
    flags = { microlens = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "pagure-cli"; version = "0.2"; };
      license = "GPL-2.0-only";
      copyright = "2019 Jens Petersen";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/pagure-cli";
      url = "";
      synopsis = "Pagure client";
      description = "A commandline Pagure client for querying projects and users.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pagure" = {
          depends = ([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if flags.microlens
            then [
              (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
              (hsPkgs."microlens-aeson" or (errorHandler.buildDepError "microlens-aeson"))
            ]
            else [
              (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
              (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
        };
      };
    };
  }
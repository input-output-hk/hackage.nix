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
      specVersion = "1.20";
      identifier = { name = "haskus-system-build"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2018";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://www.haskus.org/system";
      url = "";
      synopsis = "Haskus system build tool";
      description = "Build tool to use with haskus-system.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskus-system-build" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."haskus-utils" or (errorHandler.buildDepError "haskus-utils"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            ];
          buildable = true;
          };
        };
      };
    }
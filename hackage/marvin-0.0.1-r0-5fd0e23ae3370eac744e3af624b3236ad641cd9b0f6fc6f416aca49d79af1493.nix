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
      specVersion = "1.10";
      identifier = { name = "marvin"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Justus Adam";
      maintainer = "dev@justus.science";
      author = "JustusAdam";
      homepage = "https://github.com/JustusAdam/marvin#readme";
      url = "";
      synopsis = "A modular bot for slack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."wuss" or (errorHandler.buildDepError "wuss"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "marvin-pp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
            (hsPkgs."mustache" or (errorHandler.buildDepError "mustache"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            ];
          buildable = true;
          };
        "marvin-init" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
            (hsPkgs."mustache" or (errorHandler.buildDepError "mustache"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            ];
          buildable = true;
          };
        };
      };
    }
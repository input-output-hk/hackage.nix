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
      specVersion = "1.8";
      identifier = { name = "hpaco"; version = "0.28.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://bitbucket.org/tdammers/hpaco";
      url = "";
      synopsis = "Modular template compiler";
      description = "CLI front-end to the hpaco-lib library. Compiles Paco\ntemplate source code to JavaScript or PHP, or interprets\nit directly.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpaco" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."hpaco-lib" or (errorHandler.buildDepError "hpaco-lib"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }
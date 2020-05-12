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
      specVersion = "1.6";
      identifier = { name = "zampolit"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Brian Sniffen";
      maintainer = "bts@alum.mit.edu";
      author = "Brian Sniffen";
      homepage = "https://github.com/briansniffen/zampolit";
      url = "";
      synopsis = "A tool for checking how much work is done on group projects.";
      description = "Zampolit is a tool for checking how much work each contributor to a project is doing.  It produces pretty graphs of word count per author.  This is helpful when collaborating on projects that are mostly text, and do not necessarily break lines reliably or often.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "zampolit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HSH" or (errorHandler.buildDepError "HSH"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      };
    }
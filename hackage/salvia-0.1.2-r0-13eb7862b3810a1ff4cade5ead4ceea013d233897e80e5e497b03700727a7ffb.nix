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
      identifier = { name = "salvia"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Lightweight Haskell Web Server Framework ";
      description = "Lightweight Haskell Web Server Framework with modular support\nfor serving static files, directories indices, default error\nresponses, connection counting and logging, HEAD and PUT\nrequests, keep-alives, custom banner printing, default\nhandler environments for parsing request and printing\nresponses, dispatching based on request methods, URI, paths\nand filename extension, URI rewriting and redirection,\nvirtual hosting, cookie, session and user management and\nmore...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."encoding" or (errorHandler.buildDepError "encoding"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }
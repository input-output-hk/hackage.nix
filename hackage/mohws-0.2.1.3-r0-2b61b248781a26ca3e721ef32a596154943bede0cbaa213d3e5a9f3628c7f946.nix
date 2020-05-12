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
    flags = { dynamic = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "mohws"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Simon Marlow, Bjorn Bringert";
      maintainer = "Henning Thielemann <webserver@henning-thielemann.de>";
      author = "Simon Marlow, Bjorn Bringert <bjorn@bringert.net>";
      homepage = "http://code.haskell.org/mohws/";
      url = "";
      synopsis = "Modular Haskell Web Server";
      description = "A web server with a module system and support for CGI.\nBased on Simon Marlow's original Haskell Web Server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "hws" = { buildable = true; };
        "hws-dyn" = {
          depends = (pkgs.lib).optional (flags.dynamic) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"));
          buildable = if flags.dynamic then true else false;
          };
        };
      };
    }
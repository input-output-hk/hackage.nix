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
      specVersion = "0";
      identifier = { name = "cgi"; version = "3001.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Andy Gill, Ian Lynagh, Erik Meijer,\nSven Panne, Jeremy Shaw";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "A library for writing CGI programs";
      description = "This is a Haskell library for writing CGI programs. ";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ];
        buildable = true;
        };
      };
    }
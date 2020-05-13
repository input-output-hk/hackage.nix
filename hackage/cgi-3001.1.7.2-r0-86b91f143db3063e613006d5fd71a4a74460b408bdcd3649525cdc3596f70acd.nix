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
    flags = { split-base = true; bytestring-in-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "cgi"; version = "3001.1.7.2"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Andy Gill, Ian Lynagh, Erik Meijer,\nSven Panne, Jeremy Shaw";
      maintainer = "bjorn@bringert.net";
      author = "Bjorn Bringert";
      homepage = "";
      url = "";
      synopsis = "A library for writing CGI programs";
      description = "This is a Haskell library for writing CGI programs. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (if flags.bytestring-in-base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]);
        buildable = true;
        };
      };
    }
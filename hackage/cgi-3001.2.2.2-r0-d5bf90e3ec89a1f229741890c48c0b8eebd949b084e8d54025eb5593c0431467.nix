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
    flags = { network-uri = true; old-mtl = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cgi"; version = "3001.2.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, John Chee, Andy Gill, Anders Kaseorg,\nIan Lynagh, Erik Meijer, Sven Panne, Jeremy Shaw";
      maintainer = "John Chee <cheecheeo@gmail.com>";
      author = "Bjorn Bringert";
      homepage = "https://github.com/cheecheeo/haskell-cgi";
      url = "";
      synopsis = "A library for writing CGI programs";
      description = "This is a Haskell library for writing CGI programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."multipart" or (errorHandler.buildDepError "multipart"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ])) ++ (if flags.old-mtl
          then [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
            ]
          else [ (hsPkgs."mtl" or (errorHandler.buildDepError "mtl")) ]);
        buildable = true;
        };
      };
    }
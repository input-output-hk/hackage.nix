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
    flags = {
      split-base = true;
      bytestring-in-base = true;
      extensible-exceptions-in-base = true;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "cgi"; version = "3001.1.8.4"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Andy Gill, Anders Kaseorg, Ian Lynagh,\nErik Meijer, Sven Panne, Jeremy Shaw";
      maintainer = "Anders Kaseorg <andersk@mit.edu>";
      author = "Bjorn Bringert";
      homepage = "http://andersk.mit.edu/haskell/cgi/";
      url = "";
      synopsis = "A library for writing CGI programs";
      description = "This is a Haskell library for writing CGI programs. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
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
            ])) ++ (if flags.extensible-exceptions-in-base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            ]);
        buildable = true;
        };
      };
    }
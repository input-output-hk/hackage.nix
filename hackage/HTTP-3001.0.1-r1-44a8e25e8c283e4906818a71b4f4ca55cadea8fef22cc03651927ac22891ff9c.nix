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
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HTTP"; version = "3001.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2002, Warrick Gray\nCopyright (c) 2002-2005, Ian Lynagh\nCopyright (c) 2003-2006, Bjorn Bringert\nCopyright (c) 2004, Andre Furtado\nCopyright (c) 2004, Ganesh Sittampalam\nCopyright (c) 2004-2005, Dominic Steinitz";
      maintainer = "Bjorn Bringert <bjorn@bringert.net>";
      author = "Warrick Gray <warrick.gray@hotmail.com>";
      homepage = "http://www.haskell.org/http/";
      url = "";
      synopsis = "";
      description = "A library for client-side HTTP";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ] ++ (if flags.old-base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ]);
        buildable = true;
      };
    };
  }
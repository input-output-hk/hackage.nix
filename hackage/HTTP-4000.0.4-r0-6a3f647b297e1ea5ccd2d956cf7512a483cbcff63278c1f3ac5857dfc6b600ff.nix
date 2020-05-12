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
      identifier = { name = "HTTP"; version = "4000.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2002, Warrick Gray\nCopyright (c) 2002-2005, Ian Lynagh\nCopyright (c) 2003-2006, Bjorn Bringert\nCopyright (c) 2004, Andre Furtado\nCopyright (c) 2004, Ganesh Sittampalam\nCopyright (c) 2004-2005, Dominic Steinitz\nCopyright 2007 Robin Bate Boerop\nCopyright 2008-2009 Sigbjorn Finne";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "Warrick Gray <warrick.gray@hotmail.com>";
      homepage = "http://projects.haskell.org/http/";
      url = "";
      synopsis = "A library for client-side HTTP";
      description = "A library for client-side HTTP, version 4. Rewrite of existing HTTP\npackage to allow overloaded representation of HTTP request bodies\nand responses. Provides three such instances: lazy and strict 'ByteString',\nalong with the good old @String@.\n\nInspired in part by Jonas Aadahl et al's work on ByteString'ifying HTTP\na couple of years ago.\n\nGit repository available at <git://code.galois.com/HTTPbis.git>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }